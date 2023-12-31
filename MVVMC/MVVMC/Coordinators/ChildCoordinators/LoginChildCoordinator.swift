import Foundation
import UIKit

class LoginChildCoordinator: ChildCoordinator {
 
    weak var parentCoordinator: ParentCoordinator?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configureChildViewController() {
        let loginVc = LoginViewController.instatiateFromStoryboard()
        loginVc.loginChildCoordinator = self
        self.navigationController.pushViewController(loginVc, animated: false)
    }
    
    func navigateToResetPasswordVC() {
        let resetPassVC = ResetPasswordVC.instatiateFromStoryboard()
        self.navigationController.pushViewController(resetPassVC, animated: true)
    }
    
    func navigateToSignupVC() {
        let signUpVC = SignupViewController.instatiateFromStoryboard()
        self.navigationController.pushViewController(signUpVC, animated: true)
    }
    
    func navigateToHomeVC(userName: String) {
        let homeChildCoordinator = ChildCoordinatorFactory.create(with: parentCoordinator!.navigationController, type: .home)
        homeChildCoordinator.passParameter(value: HomeChildParameter(userName: userName))
        parentCoordinator?.childCoordinators.append(homeChildCoordinator)
        parentCoordinator?.removeChildCoordinator(child: self)
        homeChildCoordinator.configureChildViewController()
    }
}
