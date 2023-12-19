import UIKit

class LoginViewController: UIViewController, CoordinatorBoard {
    
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    
    private var loginViewModel : LoginViewModel? = nil
    weak var loginChildCoordinator: LoginChildCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginViewModel = LoginViewModel()
        title = "Login"
    }
    
    @IBAction func didTapResetPassword(_ sender: Any) {
        loginChildCoordinator?.navigateToResetPasswordVC()
    }
    
    @IBAction func didTapSignUp(_ sender: Any) {
        loginChildCoordinator?.navigateToSignupVC()
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        let request = AuthenticateRequest(userName: self.txtUserName.text, password: self.txtPassword.text)
        loginViewModel?.authenticateUser(request: request, completion: { result in
            if(result != nil) {
                
                self.loginChildCoordinator?.navigateToHomeVC(userName: self.txtUserName.text!)
                
            }else {
                    // show failure alert
                let alert = UIAlertController(title: "Alert", message: "Login failed", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                self.present(alert, animated: true)
            }
        })
    }
}

