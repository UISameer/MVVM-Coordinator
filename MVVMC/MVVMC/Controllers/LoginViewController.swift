import UIKit

class LoginViewController: UIViewController, CoordinatorBoard {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    
    weak var mainCoordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapResetPassword(_ sender: Any) {
        mainCoordinator?.navigateToResetPasswordVC()
    }
    
    @IBAction func didTapSignUp(_ sender: Any) {
        mainCoordinator?.navigateToSignupVC()
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        mainCoordinator?.navigateToHomeVC()
    }
}

