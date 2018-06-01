import UIKit
import DaysToGoKit

class EventDetailViewController: UIViewController, DaysToGoViewController {

	weak var navigationCoordinator: NavigationCoordinatorProtocol?
	weak var daysToGoService: DaysToGoServiceProtocol?

	override func viewDidLoad() {
		super.viewDidLoad()
	}
}
