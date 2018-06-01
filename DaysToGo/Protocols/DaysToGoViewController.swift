import Foundation
import DaysToGoKit

protocol DaysToGoViewController {
	var navigationCoordinator: NavigationCoordinatorProtocol? { get set }
	var daysToGoService: DaysToGoServiceProtocol? { get set }
}
