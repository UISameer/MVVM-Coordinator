import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController {get set}
    func start()
    var childCoordinators: [Coordinator] { get set }
}
