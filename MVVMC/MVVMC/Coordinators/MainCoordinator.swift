import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let loginVc = LoginViewController.instatiateFromStoryboard()
        loginVc.mainCoordinator = self
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
    
    func navigateToHomeVC() {
        let homeVC = HomeViewController.instatiateFromStoryboard()
        self.navigationController.pushViewController(homeVC, animated: true)
    }
}
