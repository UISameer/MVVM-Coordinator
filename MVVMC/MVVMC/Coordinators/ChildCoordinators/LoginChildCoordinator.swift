import Foundation
import UIKit

class LoginChildCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = [Coordinator]()
    weak var mainCoordinator: MainCoordinator?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
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
        let homeChildCoordinator = HomeChildCoordinator(navigationController: self.navigationController)
        mainCoordinator?.childCoordinators.append(homeChildCoordinator)
        mainCoordinator?.removeChildCoordinator(child: self)
        homeChildCoordinator.start()
    }
}
