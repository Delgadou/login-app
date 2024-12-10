//
//  LoginModel.swift
//  loginApp
//
//  Created by Henrique Delgado on 09/12/24.
//

import SwiftUI

class LoginModel: ObservableObject {
    @Published var userData: [User] = [
        User(name: "Henrique", email: "henrique@delgado.com", password: "123456"),
        User(name: "Thomas", email: "thomas@delgado.com", password: "123456"),
        User(name: "Guilherme", email: "guilherme@delgado.com", password: "123456")
    ]
    @Published var isLoggedIn: Bool = false
    @Published var loginAttempts: Int = 0
    @Published var maxLoginAttempts: Int = 5

    func login(email: String, password: String) {
        loginAttempts += 1
        for user in userData {
            if email == user.email && password == user.password{
                isLoggedIn = true
            } else {
                exceedsMaxLoginAttempts()
            }
        }
    }

    func logout() {
        isLoggedIn = false
    }

    func resetPassword(email: String, newPassword: String) {
        for user in userData {
            if(email == user.email) {
                userData[0].password = newPassword
            }
        }
    }

    func createAccount(email: String, name: String, password: String) {
        userData.append(User(name: name, email: email, password: password))
    }

    func exceedsMaxLoginAttempts() {
        if(loginAttempts == maxLoginAttempts) {
            //Bloqueia login
        }
    }
}

struct User: Identifiable {
    let id: UUID = UUID()
    var name: String
    var email: String
    var password: String
}
