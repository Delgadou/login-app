//
//  LoginModel.swift
//  loginApp
//
//  Created by Henrique Delgado on 09/12/24.
//

import SwiftUI

@Observable
class LoginModel {
    var isLoggedIn: Bool = false
    
    var loginAttempts: Int = 0
    var maxLoginAttempts: Int = 5

    func login(email: String, password: String) {
        loginAttempts += 1
        //Aumenta contagem de tentativa e logo em seguida faz requisição de LOGIN
        //IF Successful loginAttempts = 0.
    }

    func exceedsMaxLoginAttempts() {
        if(loginAttempts == maxLoginAttempts) {
            //Quando a contagem de tentativas for a mesma que o limite imposto o login será bloqueado por um tempo.
        }
    }

    func navigateToForgotPassword() {
        
    }
}
