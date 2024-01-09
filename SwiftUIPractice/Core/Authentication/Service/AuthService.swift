//
//  AuthService.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/9/24.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }

    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(eamil: String, password: String, username: String) async throws {
        
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        
    }
}
