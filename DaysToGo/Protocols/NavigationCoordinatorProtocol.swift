import UIKit

protocol NavigationCoordinatorProtocol : class {
	
	var navigationController: UINavigationController { get set }

	func start()
	func presentSettingsViewController()
	func presentEventDetailViewController()
}
