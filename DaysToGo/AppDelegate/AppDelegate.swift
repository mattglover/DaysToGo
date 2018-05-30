import UIKit
import DaysToGoKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

		self.window = UIWindow(frame: UIScreen.main.bounds)
		let initialViewController = ViewController()
		initialViewController.daysToGoService = DaysToGoService()
		self.window?.rootViewController = initialViewController
		self.window?.makeKeyAndVisible()

		return true
	}
}

