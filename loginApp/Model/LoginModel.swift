//
//  LoginModel.swift
//  loginApp
//
//  Created by Henrique Delgado on 09/12/24.
//

import SwiftUI

@Observable
class LoginModel {
    var showAlert: Bool = false
    var email: String = ""
    var password: String = ""
    var destination: LoginDestination = .LoginView

    var loginAttempts: Int = 0
    var maxLoginAttempts: Int = 5

    func login(email: String, password: String) {

        destination = .HomeView
        loginAttempts += 1

    }

    func exceedsMaxLoginAttempts() {
        if(loginAttempts == maxLoginAttempts) {
        }
    }

    func navigateToForgotPassword() {
        
    }
}

//enum LoginDestination: CaseIterable, Hashable {
//    case HomeView
//    case SignupView
//    case ForgotPasswordView
//
//    @ViewBuilder var body: some View {
//        switch self {
//        case .HomeView:
//            HomeView()
//        case .SignupView:
//            SignupView()
//        case .ForgotPasswordView:
//            ForgotPasswordView()
//        }
//    }
//}

enum LoginDestination: String, Hashable {
    case LoginView
    case HomeView
    case SignupView
    case ForgotPasswordView
}

//enum LoginDestination: Hashable, View {
//    case HomeView
//    case RegisterView
//    case ForgotPasswordView
//
//    var body: some View {
//        switch self {
//        case .HomeView: LoginDestination.HomeView
//        case .RegisterView: LoginDestination.RegisterView
//        case .ForgotPasswordView: LoginDestination.ForgotPasswordView
//        }
//    }
//}
