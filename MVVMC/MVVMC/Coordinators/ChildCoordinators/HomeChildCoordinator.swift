import Foundation
import UIKit

class HomeChildCoordinator: ChildCoordinator {
    
    weak var parentCoordinator: ParentCoordinator?
    
    var navigationController: UINavigationController
    private var homeViewUserName: String = String()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configureChildViewController() {
        let homeVC = HomeViewController.instatiateFromStoryboard()
        homeVC.usrName = self.homeViewUserName
        self.navigationController.pushViewController(homeVC, animated: true)
    }
    
    func passParameter(value: Decodable) {
        guard let parameter = value as? HomeChildParameter else { return }
        self.homeViewUserName = parameter.userName
    }
}
