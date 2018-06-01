import UIKit
import DaysToGoKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	var navigationCoordinator: NavigationCoordinatorProtocol!
	let daysToGoModelService = DaysToGoService()
	let navigationController = UINavigationController()

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

		navigationCoordinator = NavigationCoordinator(navigationController: navigationController, modelService: daysToGoModelService)
		navigationCoordinator.start()

		self.window = UIWindow(frame: UIScreen.main.bounds)
		self.window?.rootViewController = navigationController
		self.window?.makeKeyAndVisible()

		return true
	}
}

