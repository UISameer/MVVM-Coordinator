import Foundation
import UIKit

protocol CoordinatorBoard: UIViewController {
    static func instatiateFromStoryboard() -> Self
}

extension CoordinatorBoard {
    
    static func instatiateFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let id = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
 
