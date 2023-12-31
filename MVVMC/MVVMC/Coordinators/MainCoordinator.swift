import Foundation
import UIKit

class MainCoordinator: ParentCoordinator {
    var navigationController: UINavigationController
    var childCoordinators: [ChildCoordinator] = [ChildCoordinator]()

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configureRootViewController() {  
        let loginChildCoordinator = ChildCoordinatorFactory.create(with: self.navigationController, type: .login)
        childCoordinators.append(loginChildCoordinator)
        loginChildCoordinator.parentCoordinator = self
        loginChildCoordinator.configureChildViewController() 
    }
    
    func removeChildCoordinator(child: ChildCoordinator) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if(coordinator === child) {
                childCoordinators.remove(at: index)
            }
        }
    }
}
