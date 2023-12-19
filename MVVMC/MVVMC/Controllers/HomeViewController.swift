import UIKit

class HomeViewController: UIViewController, CoordinatorBoard {

    @IBOutlet weak var userName: UILabel!
    var usrName: String = String()
    weak var homeChildCoordinator: HomeChildCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        userName.text = usrName
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
