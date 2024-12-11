//
//  LoginView.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct LoginView: View {
    @Environment(LoginModel.self) private var loginModel
    @EnvironmentObject var router: Router
    @State var showAlert: Bool = false
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

            } label: {
                Text("Forgot password?")
                    .foregroundStyle(Color.gray)
                    .underline()
                    .hAlign(.trailing)
            }.padding(.bottom)

            Button {
                loginModel.login(email: email, password: password)
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

                } label: {
                    Text("Sign up")
                        .underline()
                }
            }
        }.padding()
            .vAlign(.center)
            .navigationDestination(isPresented: loginModel.$isLoggedIn) {
                HomeView()
            }
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
