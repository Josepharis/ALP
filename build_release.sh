#!/bin/bash

# ALP Release Build Script
# This script helps prepare and build release versions for both Android and iOS

set -e  # Exit on error

echo "🚀 ALP Release Build Script"
echo "=========================="
echo ""

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to print colored output
print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    print_error "Flutter is not installed or not in PATH"
    exit 1
fi

print_success "Flutter detected: $(flutter --version | head -n 1)"
echo ""

# Clean previous builds
echo "🧹 Cleaning previous builds..."
flutter clean
print_success "Clean complete"
echo ""

# Get dependencies
echo "📦 Getting dependencies..."
flutter pub get
print_success "Dependencies fetched"
echo ""

# Run code generation if needed
echo "🔨 Running code generation..."
flutter gen-l10n
print_success "Localization files generated"
echo ""

# Analyze code
echo "🔍 Analyzing code..."
if flutter analyze --no-pub; then
    print_success "Code analysis passed"
else
    print_warning "Code analysis found some issues (check warnings above)"
fi
echo ""

# Ask user which platform to build
echo "Which platform would you like to build?"
echo "1) Android (APK)"
echo "2) Android (App Bundle - recommended for Play Store)"
echo "3) iOS"
echo "4) Both Android and iOS"
read -p "Enter choice (1-4): " choice

case $choice in
    1)
        echo ""
        echo "📱 Building Android APK (Release)..."
        flutter build apk --release
        print_success "Android APK build complete!"
        echo ""
        echo "📍 Output location: build/app/outputs/flutter-apk/app-release.apk"
        ;;
    2)
        echo ""
        echo "📱 Building Android App Bundle (Release)..."
        flutter build appbundle --release
        print_success "Android App Bundle build complete!"
        echo ""
        echo "📍 Output location: build/app/outputs/bundle/release/app-release.aab"
        print_warning "Remember to upload this .aab file to Google Play Console"
        ;;
    3)
        echo ""
        echo "📱 Building iOS (Release)..."
        if [ "$(uname)" != "Darwin" ]; then
            print_error "iOS builds can only be created on macOS"
            exit 1
        fi
        flutter build ios --release
        print_success "iOS build complete!"
        echo ""
        print_warning "Next steps:"
        echo "1. Open ios/Runner.xcworkspace in Xcode"
        echo "2. Select 'Any iOS Device' as the build target"
        echo "3. Go to Product > Archive"
        echo "4. Upload to App Store Connect"
        ;;
    4)
        echo ""
        echo "📱 Building Android App Bundle..."
        flutter build appbundle --release
        print_success "Android App Bundle complete!"
        echo ""
        
        if [ "$(uname)" == "Darwin" ]; then
            echo "📱 Building iOS..."
            flutter build ios --release
            print_success "iOS build complete!"
            echo ""
            print_warning "iOS Next steps:"
            echo "1. Open ios/Runner.xcworkspace in Xcode"
            echo "2. Select 'Any iOS Device' as the build target"
            echo "3. Go to Product > Archive"
            echo "4. Upload to App Store Connect"
        else
            print_warning "Skipping iOS build (macOS required)"
        fi
        ;;
    *)
        print_error "Invalid choice"
        exit 1
        ;;
esac

echo ""
echo "================================"
print_success "Build process complete!"
echo "================================"
echo ""

# Remind about important steps
echo "📋 Pre-Submission Checklist:"
echo "□ Test the build on real devices"
echo "□ Verify all premium features work"
echo "□ Check in-app purchases"
echo "□ Test notifications"
echo "□ Verify privacy policy is accessible"
echo "□ Prepare store listing materials"
echo "□ Review RELEASE_CHECKLIST.md for complete list"
echo ""

# Show app version
APP_VERSION=$(grep '^version:' pubspec.yaml | awk '{print $2}')
print_success "App Version: $APP_VERSION"
echo ""

print_warning "Don't forget to update version number in pubspec.yaml for future releases!"

