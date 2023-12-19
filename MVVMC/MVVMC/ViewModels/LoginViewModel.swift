import Foundation

struct LoginViewModel {
    
    func authenticateUser(request: AuthenticateRequest,completion : @escaping (_ result: User?) -> Void) {
        _ = completion(User.generateTestModel())
    }
}

