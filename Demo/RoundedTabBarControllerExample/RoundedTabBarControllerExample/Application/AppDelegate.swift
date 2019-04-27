import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    // MARK: - Properties
    // MARK: Mutable
    
    var window: UIWindow?
    
    
    // MARK: - Protocol Conformance
    // MARK: UIApplicationDelegate
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupRootViewController()
        
        return true
    }
    
    
    // MARK: - Setups
    
    private func setupRootViewController() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = EBRoundedTabBarController()
        window.makeKeyAndVisible()
        self.window = window
    }
}

