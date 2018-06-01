import UIKit
import DaysToGoKit

class NavigationCoordinator: NavigationCoordinatorProtocol {

	var modelService: DaysToGoServiceProtocol
	var navigationController: UINavigationController

	init(navigationController: UINavigationController, modelService: DaysToGoServiceProtocol) {
		self.navigationController = navigationController
		self.modelService = modelService
	}

	func start() {
		guard let eventsListViewController = viewController(withStoryboardIdentifier: "EventsListViewController") as? EventsListViewController else {
			return
		}
		navigationController.pushViewController(eventsListViewController, animated: false)
	}

	func presentEventDetailViewController() {
		guard let eventDetailViewController = viewController(withStoryboardIdentifier: "EventDetailViewController") as? EventDetailViewController else {
			return
		}
		navigationController.pushViewController(eventDetailViewController, animated: true)
	}

	func presentSettingsViewController() {
		// To Be Implemented
	}
}

extension NavigationCoordinator {
	func viewController(withStoryboardIdentifier identifier: String) -> DaysToGoViewController? {
		let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
		var viewController = storyboard.instantiateViewController(withIdentifier: identifier) as? DaysToGoViewController
		viewController?.daysToGoService = modelService
		viewController?.navigationCoordinator = self
		return viewController
	}
}
