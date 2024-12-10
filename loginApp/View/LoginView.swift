//
//  LoginView.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var router: Router
    @Binding var showForgotPassword: Bool
    @Binding var showSignup: Bool
    @State var showAlert: Bool = false
    @Binding var viewModel: LoginModel
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        VStack {
            Text("Login")
                .bold()
                .font(.title2)
                .hAlign(.leading)
                .padding(.bottom)

            CustomTF(hint: "Email", value: $email)

            CustomTF(hint: "Password", isPassword: true, value: $password)
                .padding(.vertical, 15)

            Button {
                showForgotPassword.toggle()
            } label: {
                Text("Forgot password?")
                    .foregroundStyle(Color.gray)
                    .underline()
                    .hAlign(.trailing)
            }.padding(.bottom)

            Button {
                viewModel.login(email: email, password: password)
                if(viewModel.isLoggedIn) {
                    router.currentView = .tabManager
                } else {
                    showAlert.toggle()
                }
            } label: {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }.padding(.bottom)
                .alert("Senha incorreta", isPresented: $showAlert){

                }
            message: {
                Text("Tenta novamente")
            }

            HStack {
                Text("Don't have an account?")
                    .foregroundStyle(.secondary)
                Button {
                    showSignup.toggle()
                } label: {
                    Text("Sign up")
                        .underline()
                }
            }
        }.padding()
            .vAlign(.center)
    }
}

enum NavigationDestinations: String, CaseIterable, Hashable {
    case HomeView
    case RegisterView
    case ForgotPasswordView
}

#Preview {
    RootView()
        .environmentObject(Router.shared)
}
