import Foundation
import UIKit

class HomeChildCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeVC = HomeViewController.instatiateFromStoryboard()
//        homeVC.usrName = userName
        self.navigationController.pushViewController(homeVC, animated: true)
    }
}
