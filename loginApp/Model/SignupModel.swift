//
//  SignupModel.swift
//  loginApp
//
//  Created by Henrique Delgado on 10/12/24.
//

import SwiftUI

@Observable
class SignupModel {
    var name: String = ""
    var email: String = ""
    var password: String = ""


    func registerAccount() {
        //Cria conta
    }

//    func emailAlreadyExists() -> Bool {
//        //Verifica se o email já está em uso, se estiver exibir alerta para o usuário.
//        return false
//    }

    func loginButtonPressed(loginDestination: Binding<LoginModel.Destination?>) {
        loginDestination.wrappedValue = nil
    }
}
