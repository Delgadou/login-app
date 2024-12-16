//
//  ForgotPasswordModel.swift
//  loginApp
//
//  Created by Henrique Delgado on 10/12/24.
//

import SwiftUI

@Observable
class ForgotPasswordModel {
    var email: String = ""
    var password: String = ""
    var confirmPassword: String = ""

    func resetPasswordButtonPressed(loginEmail: Binding<String>, loginPassword: Binding<String>, loginDestination: Binding<LoginModel.Destination?>) {
        loginEmail.wrappedValue = email
        loginPassword.wrappedValue = password
        loginDestination.wrappedValue = nil
    }
}
