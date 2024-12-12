//
//  LoginModel.swift
//  loginApp
//
//  Created by Henrique Delgado on 09/12/24.
//

import SwiftUI
import SwiftNavigation
import SwiftUINavigation

@Observable
class LoginModel {
    var showAlert: Bool = false
    var email: String = ""
    var password: String = ""
    var destination: LoginDestination?

    var loginAttempts: Int = 0
    var maxLoginAttempts: Int = 5

    func loginButtonPressed(email: String, password: String) {
        destination = .HomeView
        loginAttempts += 1
    }

    func exceedsMaxLoginAttempts() {
        if(loginAttempts == maxLoginAttempts) {
            //Do something
        }
    }

    func forgotPasswordButtonPressed() {
        destination = .ForgotPasswordView
    }

    func signupButtonPressed() {
        destination = .SignupView
    }
}

@CasePathable
enum LoginDestination {
    case HomeView
    case SignupView
    case ForgotPasswordView
}
