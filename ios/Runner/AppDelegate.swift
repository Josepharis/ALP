import Flutter
import UIKit
import Firebase
import FirebaseMessaging
import UserNotifications

@main
@objc class AppDelegate: FlutterAppDelegate {
  private var flutterChannel: FlutterMethodChannel?
  
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()
    
    // Flutter method channel'ı kur
    let controller = window?.rootViewController as! FlutterViewController
    flutterChannel = FlutterMethodChannel(
      name: "com.example.anestezi/notifications",
      binaryMessenger: controller.binaryMessenger
    )
    
    // Push notification izinlerini iste
    UNUserNotificationCenter.current().delegate = self
    
    let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
    UNUserNotificationCenter.current().requestAuthorization(
      options: authOptions,
      completionHandler: { granted, error in
        print("📱 Notification permission granted: \(granted)")
        if let error = error {
          print("📱 Notification permission error: \(error)")
        }
      }
    )
    
    application.registerForRemoteNotifications()
    print("📱 Remote notifications registration requested")
    
    // Firebase Messaging delegate'ini ayarla
    Messaging.messaging().delegate = self
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
  // APNs token başarıyla alındığında
  override func application(_ application: UIApplication,
                    didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    print("📱 APNs token received successfully!")
    let tokenParts = deviceToken.map { data in String(format: "%02.2hhx", data) }
    let token = tokenParts.joined()
    print("📱 APNs token: \(token)")
    
    Messaging.messaging().apnsToken = deviceToken
    print("📱 APNs token set to Firebase Messaging")
    
    // Flutter'a token'ı bildir
    flutterChannel?.invokeMethod("onAPNSTokenReceived", arguments: token)
  }
  
  // APNs token alma hatası
  override func application(_ application: UIApplication,
                    didFailToRegisterForRemoteNotificationsWithError error: Error) {
    print("📱 Failed to register for remote notifications: \(error)")
    flutterChannel?.invokeMethod("onAPNSTokenError", arguments: error.localizedDescription)
  }
  
  // Uygulama açıkken bildirim geldiğinde
  override func userNotificationCenter(_ center: UNUserNotificationCenter,
                              willPresent notification: UNNotification,
                              withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
    let userInfo = notification.request.content.userInfo
    print("Received notification while app is in foreground: \(userInfo)")
    
    // Bildirimi göster
    completionHandler([[.alert, .sound, .badge]])
  }
  
  // Bildirime tıklandığında
  override func userNotificationCenter(_ center: UNUserNotificationCenter,
                              didReceive response: UNNotificationResponse,
                              withCompletionHandler completionHandler: @escaping () -> Void) {
    let userInfo = response.notification.request.content.userInfo
    print("User tapped on notification: \(userInfo)")
    
    completionHandler()
  }
}

// MARK: - MessagingDelegate
extension AppDelegate: MessagingDelegate {
  func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
    print("📱 Firebase registration token received: \(String(describing: fcmToken))")
    
    let dataDict: [String: String] = ["token": fcmToken ?? ""]
    NotificationCenter.default.post(
      name: Notification.Name("FCMToken"),
      object: nil,
      userInfo: dataDict
    )
  }
}
