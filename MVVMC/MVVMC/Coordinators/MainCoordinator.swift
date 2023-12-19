import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = [Coordinator]()

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {  
        let loginChildCoordinator = LoginChildCoordinator(navigationController: self.navigationController)
        childCoordinators.append(loginChildCoordinator)
        loginChildCoordinator.mainCoordinator = self
        loginChildCoordinator.start()
    }
    
    func removeChildCoordinator(child: Coordinator) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if(coordinator === child) {
                childCoordinators.remove(at: index)
            }
        }
    }
}
