import Foundation

struct User {
    let id : Int
    let name : String
    let isAdmin: Bool
    
    static func generateTestModel() -> User {
        return User(id: 1, name: "Sameer", isAdmin: false)
    }
}

struct AuthenticateRequest {
    let userName, password : String?
}
