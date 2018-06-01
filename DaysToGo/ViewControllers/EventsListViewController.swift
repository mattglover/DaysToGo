import UIKit
import DaysToGoKit

class EventsListViewController: UIViewController, DaysToGoViewController {

	weak var navigationCoordinator: NavigationCoordinatorProtocol?
	weak var daysToGoService: DaysToGoServiceProtocol?

	override func viewDidLoad() {
		super.viewDidLoad()

		NotificationCenter.default.addObserver(self, selector:#selector(eventsUpdated(_:)), name: .eventsUpdated, object: nil)
		NotificationCenter.default.addObserver(self, selector:#selector(eventUpdated(_:)), name: .eventUpdated, object: nil)
		NotificationCenter.default.addObserver(self, selector:#selector(eventDeleted(_:)), name: .eventDeleted, object: nil)
		NotificationCenter.default.addObserver(self, selector:#selector(eventAdded(_:)), name: .eventAdded, object: nil)
	}
}

extension EventsListViewController {
	@IBAction func detailbuttonTapped(_ sender: Any) {
		self.navigationCoordinator?.presentEventDetailViewController()
	}
}

extension EventsListViewController {
	@objc func eventsUpdated(_ notification: Notification) {
		print("Events Updated")
	}

	@objc func eventUpdated(_ notification: Notification) {
		guard let event = notification.userInfo?["event"] as? Event else { return }
		print("Event Updated : \(String(describing: event))")
	}

	@objc func eventAdded(_ notification: Notification) {
		guard let event = notification.userInfo?["event"] as? Event else { return }
		print("Event Added : \(String(describing: event))")
	}

	@objc func eventDeleted(_ notification: Notification) {
		let eventId = notification.userInfo?["eventId"] as? UUID
		print("Event eventDeleted : \(String(describing: eventId))")
	}
}

