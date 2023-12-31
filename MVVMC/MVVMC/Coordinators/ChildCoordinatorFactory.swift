import UIKit

enum ChildCoordinatorType {
    case login
    case home
}

class ChildCoordinatorFactory {
    
    static func create(with navigationController: UINavigationController, type: ChildCoordinatorType) -> ChildCoordinator {
        
        switch type {
            case .login:
                return LoginChildCoordinator(navigationController: navigationController)
            case .home:
                return HomeChildCoordinator(navigationController: navigationController)
        }
    }
}
