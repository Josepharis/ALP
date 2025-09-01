import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('tr'),
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'ALP'**
  String get appTitle;

  /// Login button text
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// Register button text
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// Email field label
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// Password field label
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// Forgot password link text
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// Text asking if user doesn't have account
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// Already have account text
  ///
  /// In en, this message translates to:
  /// **'Already have an account? '**
  String get alreadyHaveAccount;

  /// Sign up button text
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// Sign in button text
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// Email field hint
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterEmail;

  /// Password field hint
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterPassword;

  /// Email validation message
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailRequired;

  /// Invalid email validation message
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get invalidEmail;

  /// Password validation message
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordRequired;

  /// Password too short validation
  ///
  /// In en, this message translates to:
  /// **'❌ Password too short\n💡 Must be at least 6 characters'**
  String get passwordTooShort;

  /// Reset password button text
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// Reset password dialog title
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPasswordTitle;

  /// Reset password dialog message
  ///
  /// In en, this message translates to:
  /// **'Enter your email address to reset your password'**
  String get resetPasswordMessage;

  /// Send button text
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// Cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// OK button text
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// Understood button text
  ///
  /// In en, this message translates to:
  /// **'Understood'**
  String get understood;

  /// Success message title
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// Error message
  ///
  /// In en, this message translates to:
  /// **'Error!'**
  String get error;

  /// Reset email sent success message
  ///
  /// In en, this message translates to:
  /// **'Password reset email sent successfully!'**
  String get resetEmailSent;

  /// Check email inbox message
  ///
  /// In en, this message translates to:
  /// **'Please check your email inbox and follow the instructions to reset your password.'**
  String get checkEmailInbox;

  /// Language selection text
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// Turkish language option
  ///
  /// In en, this message translates to:
  /// **'Türkçe'**
  String get turkish;

  /// English language option
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// Home screen title
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// Profile screen title
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// Settings screen title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Logout button
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// Quiz label
  ///
  /// In en, this message translates to:
  /// **'Quiz'**
  String get quiz;

  /// Questions label
  ///
  /// In en, this message translates to:
  /// **'Questions'**
  String get questions;

  /// Score label
  ///
  /// In en, this message translates to:
  /// **'Score'**
  String get score;

  /// Correct answer
  ///
  /// In en, this message translates to:
  /// **'Correct'**
  String get correct;

  /// Incorrect answer label
  ///
  /// In en, this message translates to:
  /// **'INCORRECT'**
  String get incorrect;

  /// Next button text
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// Previous button text
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get previous;

  /// Finish button text
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// Start button text
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// Local Anesthetics category
  ///
  /// In en, this message translates to:
  /// **'Local Anesthetics'**
  String get localAnesthetics;

  /// Cardiovascular physiology category
  ///
  /// In en, this message translates to:
  /// **'Cardiovascular Physiology and Anesthesia'**
  String get cardiovascularPhysiology;

  /// Respiratory Physiology category
  ///
  /// In en, this message translates to:
  /// **'Respiratory Physiology'**
  String get respiratoryPhysiology;

  /// Difficulty level
  ///
  /// In en, this message translates to:
  /// **'Difficulty'**
  String get difficulty;

  /// Easy difficulty level
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get easy;

  /// Medium difficulty level
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// Hard difficulty level
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get hard;

  /// Category text
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// Select category dropdown
  ///
  /// In en, this message translates to:
  /// **'Select Category'**
  String get selectCategory;

  /// Question count text
  ///
  /// In en, this message translates to:
  /// **'Question Count'**
  String get questionCount;

  /// Total questions count label
  ///
  /// In en, this message translates to:
  /// **'Total questions'**
  String get totalQuestions;

  /// Home page title
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homePage;

  /// Quizzes tab title
  ///
  /// In en, this message translates to:
  /// **'Quizzes'**
  String get quizzes;

  /// Missing tab title
  ///
  /// In en, this message translates to:
  /// **'Missing'**
  String get missing;

  /// Daily question title
  ///
  /// In en, this message translates to:
  /// **'Daily Question'**
  String get dailyQuestion;

  /// Ongoing label
  ///
  /// In en, this message translates to:
  /// **'Ongoing'**
  String get ongoing;

  /// Ongoing quizzes title
  ///
  /// In en, this message translates to:
  /// **'Ongoing Quizzes'**
  String get ongoingQuizzes;

  /// View all button text
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// Answer label
  ///
  /// In en, this message translates to:
  /// **'ANSWER'**
  String get answer;

  /// Check again button text
  ///
  /// In en, this message translates to:
  /// **'Check Again'**
  String get checkAgain;

  /// New quiz button text
  ///
  /// In en, this message translates to:
  /// **'New Quiz'**
  String get newQuiz;

  /// Leaderboard tab title
  ///
  /// In en, this message translates to:
  /// **'Leaderboard'**
  String get leaderboard;

  /// Select from gallery option
  ///
  /// In en, this message translates to:
  /// **'Select from\nGallery'**
  String get selectFromGallery;

  /// Take photo option
  ///
  /// In en, this message translates to:
  /// **'Take\nPhoto'**
  String get takePhoto;

  /// Image selection error message
  ///
  /// In en, this message translates to:
  /// **'An error occurred while selecting image'**
  String get imageSelectionError;

  /// General error message
  ///
  /// In en, this message translates to:
  /// **'An error occurred, please try again'**
  String get generalError;

  /// Photo upload error message
  ///
  /// In en, this message translates to:
  /// **'An error occurred while uploading photo'**
  String get photoUploadError;

  /// Profile updated success message
  ///
  /// In en, this message translates to:
  /// **'Your profile information has been updated'**
  String get profileUpdated;

  /// Save button text
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Edit button
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Show profile to others setting
  ///
  /// In en, this message translates to:
  /// **'Show My Profile to Others'**
  String get showProfileToOthers;

  /// Show on leaderboard setting
  ///
  /// In en, this message translates to:
  /// **'Show on Leaderboard'**
  String get showOnLeaderboard;

  /// Share usage data setting
  ///
  /// In en, this message translates to:
  /// **'Share Usage Data'**
  String get shareUsageData;

  /// Share usage data subtitle
  ///
  /// In en, this message translates to:
  /// **'Help us improve the app by sharing anonymous usage data'**
  String get shareUsageDataSubtitle;

  /// Help and support section title
  ///
  /// In en, this message translates to:
  /// **'Help and Support'**
  String get helpAndSupport;

  /// Contact option
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// User guide option
  ///
  /// In en, this message translates to:
  /// **'User Guide'**
  String get userGuide;

  /// Email feature coming soon message
  ///
  /// In en, this message translates to:
  /// **'Email feature will be added soon'**
  String get emailFeatureComingSoon;

  /// User guide coming soon message
  ///
  /// In en, this message translates to:
  /// **'User guide will be added soon'**
  String get userGuideComingSoon;

  /// Single question label
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get question;

  /// of text (e.g., 1 of 10)
  ///
  /// In en, this message translates to:
  /// **'of'**
  String get ofText;

  /// Time remaining text
  ///
  /// In en, this message translates to:
  /// **'Time Remaining'**
  String get timeRemaining;

  /// Submit answer button
  ///
  /// In en, this message translates to:
  /// **'Submit Answer'**
  String get submitAnswer;

  /// Next question button
  ///
  /// In en, this message translates to:
  /// **'Next Question'**
  String get nextQuestion;

  /// Finish quiz button
  ///
  /// In en, this message translates to:
  /// **'Finish Quiz'**
  String get finishQuiz;

  /// Quiz completed title
  ///
  /// In en, this message translates to:
  /// **'Quiz Completed'**
  String get quizCompleted;

  /// Your score text
  ///
  /// In en, this message translates to:
  /// **'Your Score'**
  String get yourScore;

  /// Correct answers text
  ///
  /// In en, this message translates to:
  /// **'Correct Answers'**
  String get correctAnswers;

  /// Incorrect answers text
  ///
  /// In en, this message translates to:
  /// **'Incorrect Answers'**
  String get incorrectAnswers;

  /// Accuracy percentage
  ///
  /// In en, this message translates to:
  /// **'Accuracy'**
  String get accuracy;

  /// Excellent result message
  ///
  /// In en, this message translates to:
  /// **'Excellent!'**
  String get excellent;

  /// Good performance
  ///
  /// In en, this message translates to:
  /// **'Good!'**
  String get good;

  /// Needs improvement result message
  ///
  /// In en, this message translates to:
  /// **'Needs Improvement!'**
  String get needsImprovement;

  /// Try again button
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// Back to home button
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get backToHome;

  /// Name field label
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// Name field hint
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enterName;

  /// Name validation message
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get nameRequired;

  /// Confirm password field label
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// Confirm password field hint
  ///
  /// In en, this message translates to:
  /// **'Confirm your password'**
  String get enterConfirmPassword;

  /// Password mismatch validation message
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// Create account button text
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// Registration success message
  ///
  /// In en, this message translates to:
  /// **'Registration successful!'**
  String get registrationSuccessful;

  /// Welcome message after registration
  ///
  /// In en, this message translates to:
  /// **'Welcome! You can now log in.'**
  String get welcomeMessage;

  /// Loading text
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// Select answer instruction
  ///
  /// In en, this message translates to:
  /// **'Select an answer'**
  String get selectAnswer;

  /// Explanation label
  ///
  /// In en, this message translates to:
  /// **'Explanation:'**
  String get explanation;

  /// Continue quiz button
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueQuiz;

  /// Pause quiz button
  ///
  /// In en, this message translates to:
  /// **'Pause Quiz'**
  String get pauseQuiz;

  /// Exit quiz dialog title
  ///
  /// In en, this message translates to:
  /// **'Exit Quiz'**
  String get exitQuiz;

  /// Confirmation dialog title
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get areYouSure;

  /// Exit quiz confirmation message
  ///
  /// In en, this message translates to:
  /// **'Do you want to exit the quiz? Your progress will be saved.'**
  String get exitQuizConfirmation;

  /// Yes button
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No button
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// Admin title
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get admin;

  /// Add question button
  ///
  /// In en, this message translates to:
  /// **'Add Question'**
  String get addQuestion;

  /// Manage questions option
  ///
  /// In en, this message translates to:
  /// **'Manage Questions'**
  String get manageQuestions;

  /// Statistics label
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get statistics;

  /// Users section
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get users;

  /// Total users count
  ///
  /// In en, this message translates to:
  /// **'Total Users'**
  String get totalUsers;

  /// Active users count
  ///
  /// In en, this message translates to:
  /// **'Active Users'**
  String get activeUsers;

  /// Daily question title
  ///
  /// In en, this message translates to:
  /// **'Daily Question'**
  String get dailyQuestionTitle;

  /// Mistakes section title
  ///
  /// In en, this message translates to:
  /// **'Mistakes'**
  String get mistakes;

  /// No mistakes message
  ///
  /// In en, this message translates to:
  /// **'No mistakes found'**
  String get noMistakes;

  /// Review mistakes button
  ///
  /// In en, this message translates to:
  /// **'Review Mistakes'**
  String get reviewMistakes;

  /// Clear mistakes button
  ///
  /// In en, this message translates to:
  /// **'Clear Mistakes'**
  String get clearMistakes;

  /// Mistakes cleared success message
  ///
  /// In en, this message translates to:
  /// **'All mistakes have been cleared'**
  String get mistakesCleared;

  /// System management title
  ///
  /// In en, this message translates to:
  /// **'System Management'**
  String get systemManagement;

  /// Admin logout dialog title
  ///
  /// In en, this message translates to:
  /// **'Admin Logout'**
  String get adminLogout;

  /// Admin logout confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout from admin panel?'**
  String get adminLogoutConfirm;

  /// Dashboard menu item
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// Analytics menu item
  ///
  /// In en, this message translates to:
  /// **'Analytics'**
  String get analytics;

  /// Overview section title
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// Refresh statistics tooltip
  ///
  /// In en, this message translates to:
  /// **'Refresh Statistics'**
  String get refreshStats;

  /// Statistics updated success message
  ///
  /// In en, this message translates to:
  /// **'✅ Statistics updated'**
  String get statsUpdated;

  /// Quiz progress saved message
  ///
  /// In en, this message translates to:
  /// **'Quiz progress has been saved'**
  String get quizProgressSaved;

  /// Starting question label
  ///
  /// In en, this message translates to:
  /// **'Starting question'**
  String get startingQuestion;

  /// Starting score label
  ///
  /// In en, this message translates to:
  /// **'Starting score'**
  String get startingScore;

  /// Exit quiz confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to exit the quiz? Your progress will be saved and you can continue later.'**
  String get exitQuizConfirm;

  /// Seconds unit
  ///
  /// In en, this message translates to:
  /// **'seconds'**
  String get seconds;

  /// Time up message
  ///
  /// In en, this message translates to:
  /// **'Time\'s Up!'**
  String get timeUp;

  /// New users label
  ///
  /// In en, this message translates to:
  /// **'new users'**
  String get newUsers;

  /// Days unit
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get days;

  /// Data not found title
  ///
  /// In en, this message translates to:
  /// **'Data Not Found'**
  String get dataNotFound;

  /// Data migration needed message
  ///
  /// In en, this message translates to:
  /// **'Question data not loaded. Perform data migration.'**
  String get dataMigrationNeeded;

  /// Perform migration button
  ///
  /// In en, this message translates to:
  /// **'Perform Migration'**
  String get performMigration;

  /// Create new account title
  ///
  /// In en, this message translates to:
  /// **'Create New Account'**
  String get createNewAccount;

  /// Join quiz app subtitle
  ///
  /// In en, this message translates to:
  /// **'Join the quiz app and test your knowledge'**
  String get joinQuizApp;

  /// Full name field hint
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get enterFullName;

  /// Full name validation message
  ///
  /// In en, this message translates to:
  /// **'❌ Full name field cannot be empty\n💡 Please enter your full name'**
  String get fullNameRequired;

  /// Terms acceptance validation message
  ///
  /// In en, this message translates to:
  /// **'❌ Terms and conditions must be accepted\n\n💡 You must accept the terms and conditions and privacy policy to continue.'**
  String get termsRequired;

  /// Name too short validation
  ///
  /// In en, this message translates to:
  /// **'❌ Name too short\n💡 Must be at least 2 characters'**
  String get nameTooShort;

  /// Invalid characters validation
  ///
  /// In en, this message translates to:
  /// **'❌ Invalid characters\n💡 Use only letters'**
  String get invalidCharacters;

  /// Title field example
  ///
  /// In en, this message translates to:
  /// **'E.g: Anesthesiologist, Resident, Prof. Dr. etc.'**
  String get titleExample;

  /// Title too short validation
  ///
  /// In en, this message translates to:
  /// **'❌ Title too short\n💡 Must be at least 2 characters'**
  String get titleTooShort;

  /// Email empty validation for register
  ///
  /// In en, this message translates to:
  /// **'❌ Email address cannot be empty\n💡 Please enter a valid email address'**
  String get emailEmptyRegister;

  /// Email invalid validation for register
  ///
  /// In en, this message translates to:
  /// **'❌ Invalid email format\n💡 Example: user@example.com'**
  String get emailInvalidRegister;

  /// Password empty validation for register
  ///
  /// In en, this message translates to:
  /// **'❌ Password field cannot be empty\n💡 Create a strong password'**
  String get passwordEmptyRegister;

  /// Password too long validation
  ///
  /// In en, this message translates to:
  /// **'❌ Password too long\n💡 Maximum 128 characters'**
  String get passwordTooLong;

  /// Password weak suggestion
  ///
  /// In en, this message translates to:
  /// **'💡 Make your password stronger\n📝 Use 8+ characters, uppercase, lowercase, numbers'**
  String get passwordWeak;

  /// Confirm password empty validation
  ///
  /// In en, this message translates to:
  /// **'❌ Password confirmation cannot be empty\n💡 Re-enter your password'**
  String get confirmPasswordEmpty;

  /// Password mismatch validation
  ///
  /// In en, this message translates to:
  /// **'❌ Passwords do not match\n💡 Enter the same password again'**
  String get passwordMismatch;

  /// Accept all text
  ///
  /// In en, this message translates to:
  /// **'I accept all '**
  String get acceptAll;

  /// Terms of use link
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUse;

  /// Privacy policy link
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// Registration failed dialog title
  ///
  /// In en, this message translates to:
  /// **'Registration Failed'**
  String get registrationFailed;

  /// Quiz completion error message
  ///
  /// In en, this message translates to:
  /// **'An error occurred while completing the quiz'**
  String get quizCompletionError;

  /// Logout error message
  ///
  /// In en, this message translates to:
  /// **'An error occurred while logging out'**
  String get logoutError;

  /// System summary title
  ///
  /// In en, this message translates to:
  /// **'System Summary'**
  String get systemSummary;

  /// System active message
  ///
  /// In en, this message translates to:
  /// **'Quiz system is active and running.'**
  String get systemActive;

  /// Question management title
  ///
  /// In en, this message translates to:
  /// **'Question Management'**
  String get questionManagement;

  /// No categories message
  ///
  /// In en, this message translates to:
  /// **'No categories yet - Perform data migration'**
  String get noCategoriesYet;

  /// Select category instruction
  ///
  /// In en, this message translates to:
  /// **'Select a category to view\nquestion list'**
  String get selectCategoryToView;

  /// No questions in category message
  ///
  /// In en, this message translates to:
  /// **'No questions in this category yet'**
  String get noCategoryQuestions;

  /// Add new questions suggestion
  ///
  /// In en, this message translates to:
  /// **'You can add new questions or perform data migration'**
  String get addNewQuestions;

  /// Question deleted success message
  ///
  /// In en, this message translates to:
  /// **'Question successfully deleted'**
  String get questionDeleted;

  /// New user label
  ///
  /// In en, this message translates to:
  /// **'New user'**
  String get newUser;

  /// Last 7 days period
  ///
  /// In en, this message translates to:
  /// **'last 7 days'**
  String get last7Days;

  /// Daily active label
  ///
  /// In en, this message translates to:
  /// **'daily active'**
  String get dailyActive;

  /// Weekly growth label
  ///
  /// In en, this message translates to:
  /// **'Weekly Growth'**
  String get weeklyGrowth;

  /// Active rate label
  ///
  /// In en, this message translates to:
  /// **'Active Rate'**
  String get activeRate;

  /// Quiz solution label
  ///
  /// In en, this message translates to:
  /// **'Quiz Solution'**
  String get quizSolution;

  /// All quizzes title
  ///
  /// In en, this message translates to:
  /// **'All Quizzes'**
  String get allQuizzes;

  /// Start quiz button
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get startQuiz;

  /// Default user name
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// Welcome message
  ///
  /// In en, this message translates to:
  /// **'Welcome 👋'**
  String get welcome;

  /// Weekday abbreviations comma separated
  ///
  /// In en, this message translates to:
  /// **'Mon,Tue,Wed,Thu,Fri,Sat,Sun'**
  String get weekdays;

  /// Daily participation message
  ///
  /// In en, this message translates to:
  /// **'Daily Participation!'**
  String get dailyParticipation;

  /// Correct answer label
  ///
  /// In en, this message translates to:
  /// **'Correct Answer'**
  String get correctAnswer;

  /// Wrong answer label
  ///
  /// In en, this message translates to:
  /// **'Wrong Answer'**
  String get wrongAnswer;

  /// No ongoing quiz message
  ///
  /// In en, this message translates to:
  /// **'No ongoing quiz found.'**
  String get noOngoingQuiz;

  /// All filter option
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// Questions completed text
  ///
  /// In en, this message translates to:
  /// **'questions completed out of'**
  String get questionsCompleted;

  /// Progress label
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progress;

  /// Profile photo title
  ///
  /// In en, this message translates to:
  /// **'Profile Photo'**
  String get profilePhoto;

  /// Edit profile option
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// My devices option
  ///
  /// In en, this message translates to:
  /// **'My Devices'**
  String get myDevices;

  /// Help option
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// Logout confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get logoutConfirm;

  /// Daily question time up message
  ///
  /// In en, this message translates to:
  /// **'Your time to answer today\'s question has expired. Try again tomorrow!'**
  String get dailyQuestionTimeUp;

  /// Correct answer title
  ///
  /// In en, this message translates to:
  /// **'Correct Answer!'**
  String get correctAnswerTitle;

  /// Wrong answer title
  ///
  /// In en, this message translates to:
  /// **'Wrong Answer'**
  String get wrongAnswerTitle;

  /// Correct answer label
  ///
  /// In en, this message translates to:
  /// **'Correct Answer'**
  String get correctAnswerLabel;

  /// Congratulations message
  ///
  /// In en, this message translates to:
  /// **'🎉 Congratulations! You earned 20 points!'**
  String get congratulations;

  /// Try tomorrow message
  ///
  /// In en, this message translates to:
  /// **'😔 Try again tomorrow!'**
  String get tryTomorrow;

  /// Daily question solved title
  ///
  /// In en, this message translates to:
  /// **'Daily Question - Solved'**
  String get dailyQuestionSolved;

  /// Correct answer given message
  ///
  /// In en, this message translates to:
  /// **'You gave the correct answer!'**
  String get correctAnswerGiven;

  /// Wrong answer given message
  ///
  /// In en, this message translates to:
  /// **'You gave the wrong answer'**
  String get wrongAnswerGiven;

  /// Earn points opportunity message
  ///
  /// In en, this message translates to:
  /// **'20 Points Earning Opportunity!'**
  String get earnPointsOpportunity;

  /// Error try again message
  ///
  /// In en, this message translates to:
  /// **'An error occurred, please try again'**
  String get errorTryAgain;

  /// Other category
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No mistakes found message
  ///
  /// In en, this message translates to:
  /// **'No wrong questions found!'**
  String get noMistakesFound;

  /// Mistakes loading error message
  ///
  /// In en, this message translates to:
  /// **'Error loading mistakes'**
  String get mistakesLoadingError;

  /// User not logged in message
  ///
  /// In en, this message translates to:
  /// **'User not logged in!'**
  String get userNotLoggedIn;

  /// Data loading error message
  ///
  /// In en, this message translates to:
  /// **'An error occurred while loading data'**
  String get dataLoadingError;

  /// Ranking label
  ///
  /// In en, this message translates to:
  /// **'Ranking'**
  String get ranking;

  /// First place label
  ///
  /// In en, this message translates to:
  /// **'FIRST'**
  String get first;

  /// Second place label
  ///
  /// In en, this message translates to:
  /// **'SECOND'**
  String get second;

  /// Third place label
  ///
  /// In en, this message translates to:
  /// **'THIRD'**
  String get third;

  /// Anonymous user name
  ///
  /// In en, this message translates to:
  /// **'Anonymous'**
  String get anonymous;

  /// Your circle label
  ///
  /// In en, this message translates to:
  /// **'Your Circle'**
  String get yourCircle;

  /// Ranking loading message
  ///
  /// In en, this message translates to:
  /// **'Loading Ranking...'**
  String get rankingLoading;

  /// Edit question title
  ///
  /// In en, this message translates to:
  /// **'Edit Question'**
  String get editQuestion;

  /// Add new question title
  ///
  /// In en, this message translates to:
  /// **'Add New Question'**
  String get addNewQuestion;

  /// Upload word file tooltip
  ///
  /// In en, this message translates to:
  /// **'Upload Word File'**
  String get uploadWordFile;

  /// Create new question title
  ///
  /// In en, this message translates to:
  /// **'Create New Question'**
  String get createNewQuestion;

  /// Fill quiz info instruction
  ///
  /// In en, this message translates to:
  /// **'Please fill in the information below to add to the quiz.'**
  String get fillQuizInfo;

  /// Question text hint
  ///
  /// In en, this message translates to:
  /// **'Write the question text here...'**
  String get questionTextHint;

  /// Please enter question validation
  ///
  /// In en, this message translates to:
  /// **'Please enter the question text'**
  String get pleaseEnterQuestion;

  /// Options section title
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get options;

  /// Select correct answer instruction
  ///
  /// In en, this message translates to:
  /// **'Please select the correct answer and fill in all options.'**
  String get selectCorrectAnswer;

  /// Explanation optional section title
  ///
  /// In en, this message translates to:
  /// **'Explanation (Optional)'**
  String get explanationOptional;

  /// Explanation hint text
  ///
  /// In en, this message translates to:
  /// **'You can add an explanation for the question...'**
  String get explanationHint;

  /// Quiz selection section title
  ///
  /// In en, this message translates to:
  /// **'Quiz Selection'**
  String get quizSelection;

  /// No quiz found message
  ///
  /// In en, this message translates to:
  /// **'No Quiz found yet'**
  String get noQuizFound;

  /// Click new quiz instruction
  ///
  /// In en, this message translates to:
  /// **'Click to switch to \"New Quiz\" option'**
  String get clickNewQuiz;

  /// Intensive care category
  ///
  /// In en, this message translates to:
  /// **'Intensive Care'**
  String get intensiveCare;

  /// Pain treatment category
  ///
  /// In en, this message translates to:
  /// **'Pain Treatment'**
  String get painTreatment;

  /// Monitoring category
  ///
  /// In en, this message translates to:
  /// **'Monitoring'**
  String get monitoring;

  /// Cardiovascular system category
  ///
  /// In en, this message translates to:
  /// **'Cardiovascular System'**
  String get cardiovascularSystem;

  /// Neurology category
  ///
  /// In en, this message translates to:
  /// **'Neurology'**
  String get neurology;

  /// Statistics updated success message
  ///
  /// In en, this message translates to:
  /// **'✅ Statistics updated'**
  String get statsUpdatedSuccess;

  /// New users in 7 days
  ///
  /// In en, this message translates to:
  /// **'new (7 days)'**
  String get newUsers7Days;

  /// Last 7 days quizzes
  ///
  /// In en, this message translates to:
  /// **'last 7 days'**
  String get last7DaysQuizzes;

  /// System performance title
  ///
  /// In en, this message translates to:
  /// **'System Performance'**
  String get systemPerformance;

  /// System stable message
  ///
  /// In en, this message translates to:
  /// **'Quiz system is running stable and user experience is at optimum level.'**
  String get systemStable;

  /// Performance excellent status
  ///
  /// In en, this message translates to:
  /// **'Performance: Excellent'**
  String get performanceExcellent;

  /// Security secure status
  ///
  /// In en, this message translates to:
  /// **'Security: Secure'**
  String get securitySecure;

  /// Delete question confirmation
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this question?'**
  String get deleteQuestionConfirm;

  /// Real data migration title
  ///
  /// In en, this message translates to:
  /// **'Real Data Migration'**
  String get realDataMigration;

  /// About this process title
  ///
  /// In en, this message translates to:
  /// **'About this process:'**
  String get aboutThisProcess;

  /// Existing question count label
  ///
  /// In en, this message translates to:
  /// **'Existing question count'**
  String get existingQuestionCount;

  /// Will transfer all questions info
  ///
  /// In en, this message translates to:
  /// **'• Will transfer all real questions from 24 categories'**
  String get willTransferAllQuestions;

  /// Organized in folders info
  ///
  /// In en, this message translates to:
  /// **'• Each category organized in its own folder'**
  String get organizedInFolders;

  /// Existing questions skipped info
  ///
  /// In en, this message translates to:
  /// **'• Existing questions will be skipped'**
  String get existingSkipped;

  /// Hundreds of questions added info
  ///
  /// In en, this message translates to:
  /// **'• Hundreds of real questions will be added'**
  String get hundredsAdded;

  /// Confirm data migration message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to transfer ALL real questions from Data and Questions folders to Firestore?'**
  String get confirmDataMigration;

  /// Process duration warning
  ///
  /// In en, this message translates to:
  /// **'⚠️ This process may take 2-3 minutes.'**
  String get processTakes2to3Minutes;

  /// Add real questions button
  ///
  /// In en, this message translates to:
  /// **'Add Real Questions'**
  String get addRealQuestions;

  /// Select quiz dropdown
  ///
  /// In en, this message translates to:
  /// **'Select Quiz'**
  String get selectQuiz;

  /// New quiz name section
  ///
  /// In en, this message translates to:
  /// **'New Quiz Name'**
  String get newQuizName;

  /// Enter new quiz name hint
  ///
  /// In en, this message translates to:
  /// **'Enter new quiz name...'**
  String get enterNewQuizName;

  /// Quiz name required validation
  ///
  /// In en, this message translates to:
  /// **'Quiz name cannot be empty'**
  String get quizNameRequired;

  /// Option letter label
  ///
  /// In en, this message translates to:
  /// **'Option'**
  String get optionLetter;

  /// Write option hint
  ///
  /// In en, this message translates to:
  /// **'Write option'**
  String get writeOption;

  /// Very good result message
  ///
  /// In en, this message translates to:
  /// **'Very Good!'**
  String get veryGood;

  /// Full name field label
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// Title field label
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// And conjunction
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// Accept verb - empty for proper sentence
  ///
  /// In en, this message translates to:
  /// **''**
  String get accept;

  /// Questions out of total
  ///
  /// In en, this message translates to:
  /// **'questions out of'**
  String get questionsOf;

  /// Progress percentage
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progressPercent;

  /// Exit quiz dialog title
  ///
  /// In en, this message translates to:
  /// **'Exit Quiz'**
  String get exitQuizTitle;

  /// Exit button
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// General overview title
  ///
  /// In en, this message translates to:
  /// **'General Overview'**
  String get generalOverview;

  /// Organizing data message
  ///
  /// In en, this message translates to:
  /// **'Organizing data...'**
  String get organizingData;

  /// Each category transferred message
  ///
  /// In en, this message translates to:
  /// **'Each category transferred to separate folder'**
  String get eachCategoryTransferred;

  /// Organize data successful message
  ///
  /// In en, this message translates to:
  /// **'Organize Data Successful!'**
  String get organizeDataSuccessful;

  /// Questions organized transferred message
  ///
  /// In en, this message translates to:
  /// **'questions organized and transferred!'**
  String get questionsOrganizedTransferred;

  /// Errors encountered message
  ///
  /// In en, this message translates to:
  /// **'errors encountered'**
  String get errorsEncountered;

  /// Each category subcollection message
  ///
  /// In en, this message translates to:
  /// **'Each category stored in separate subcollection'**
  String get eachCategorySubcollection;

  /// Organize data transfer error message
  ///
  /// In en, this message translates to:
  /// **'Error in organize data transfer'**
  String get organizeDataTransferError;

  /// Anesthesia pharmacology category
  ///
  /// In en, this message translates to:
  /// **'Anesthesia Pharmacology'**
  String get anesthesiaPharmacology;

  /// General anesthesia category
  ///
  /// In en, this message translates to:
  /// **'General Anesthesia'**
  String get generalAnesthesia;

  /// Regional anesthesia category
  ///
  /// In en, this message translates to:
  /// **'Regional Anesthesia'**
  String get regionalAnesthesia;

  /// Respiratory system category
  ///
  /// In en, this message translates to:
  /// **'Respiratory System'**
  String get respiratorySystem;

  /// Cardiovascular category
  ///
  /// In en, this message translates to:
  /// **'Cardiovascular System'**
  String get cardiovascular;

  /// Pediatric anesthesia category
  ///
  /// In en, this message translates to:
  /// **'Pediatric Anesthesia'**
  String get pediatricAnesthesia;

  /// Obstetric anesthesia category
  ///
  /// In en, this message translates to:
  /// **'Obstetric Anesthesia'**
  String get obstetricAnesthesia;

  /// Geriatric anesthesia category
  ///
  /// In en, this message translates to:
  /// **'Geriatric Anesthesia'**
  String get geriatricAnesthesia;

  /// Operating room category
  ///
  /// In en, this message translates to:
  /// **'Operating Room'**
  String get operatingRoom;

  /// Anesthesia category
  ///
  /// In en, this message translates to:
  /// **'Anesthesia'**
  String get anesthesia;

  /// No completed quiz message
  ///
  /// In en, this message translates to:
  /// **'No completed quiz found.'**
  String get noCompletedQuiz;

  /// Completed status
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// Anesthesia application category
  ///
  /// In en, this message translates to:
  /// **'Anesthesia Application'**
  String get anesthesiaApplication;

  /// Respiratory systems category
  ///
  /// In en, this message translates to:
  /// **'Respiratory Systems'**
  String get respiratorySystems;

  /// Cardiovascular monitoring category
  ///
  /// In en, this message translates to:
  /// **'Cardiovascular Monitoring'**
  String get cardiovascularMonitoring;

  /// Operating room environment category
  ///
  /// In en, this message translates to:
  /// **'Operating Room Environment'**
  String get operatingRoomEnvironment;

  /// Anesthesia workstation category
  ///
  /// In en, this message translates to:
  /// **'Anesthesia Workstation'**
  String get anesthesiaWorkstation;

  /// Preoperative evaluation chapter
  ///
  /// In en, this message translates to:
  /// **'Chapter 18 - Preoperative Evaluation'**
  String get preoperativeEvaluation;

  /// Airway management chapter
  ///
  /// In en, this message translates to:
  /// **'Chapter 19 - Airway Management'**
  String get airwayManagement;

  /// Cardiovascular surgery category
  ///
  /// In en, this message translates to:
  /// **'Cardiovascular Surgery Anesthesia'**
  String get cardiovascularSurgery;

  /// Non-cardiovascular monitoring category
  ///
  /// In en, this message translates to:
  /// **'Non-Cardiovascular Monitoring'**
  String get nonCardiovascularMonitoring;

  /// Points label
  ///
  /// In en, this message translates to:
  /// **'Points'**
  String get points;

  /// Success rate label
  ///
  /// In en, this message translates to:
  /// **'Success Rate'**
  String get successRate;

  /// Total points label
  ///
  /// In en, this message translates to:
  /// **'Total Points'**
  String get totalPoints;

  /// Best streak label
  ///
  /// In en, this message translates to:
  /// **'Best Streak'**
  String get bestStreak;

  /// Leaders label
  ///
  /// In en, this message translates to:
  /// **'Leaders'**
  String get leaders;

  /// Completed quizzes title
  ///
  /// In en, this message translates to:
  /// **'Completed Quizzes'**
  String get completedQuizzes;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
