//
//  ForgotPasswordModel.swift
//  loginApp
//
//  Created by Henrique Delgado on 10/12/24.
//

import SwiftUI

class ForgotPasswordModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""

    func resetPassword() {
        //Reseta o password
    }
}
