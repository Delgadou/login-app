//
//  LoginView.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI
import SwiftUINavigation

struct LoginView: View {
    @State var loginModel = LoginModel()

    var body: some View {
        VStack {
            Text("Login")
                .bold()
                .font(.title2)
                .hAlign(.leading)
                .padding(.bottom)

            CustomTF(hint: "Email", value: $loginModel.email)

            CustomTF(hint: "Password", isPassword: true, value: $loginModel.password)
                .padding(.vertical, 15)

            Button {
                loginModel.forgotPasswordButtonPressed()
            } label: {
                Text("Forgot password?")
                    .foregroundStyle(Color.gray)
                    .underline()
                    .hAlign(.trailing)
            }.padding(.bottom)

            Button {
                loginModel.loginButtonPressed(email: loginModel.email, password: loginModel.password)
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


//            .alert("Senha incorreta", isPresented: $loginModel.isLoggedIn){
//
//            }
//            message: {
//                Text("Tenta novamente")
//            }

            HStack {
                Text("Don't have an account?")
                    .foregroundStyle(.secondary)
                Button {
                    loginModel.signupButtonPressed()
                } label: {
                    Text("Sign up")
                        .underline()
                }
            }
        }.padding()
            .vAlign(.center)
            .navigationDestination(item: $loginModel.destination.HomeView) {
                HomeView()
            }
            .navigationDestination(item: $loginModel.destination.ForgotPasswordView) {
                ForgotPasswordView()
            }
            .navigationDestination(item: $loginModel.destination.SignupView) {
                SignupView()
            }
    }
}

#Preview {
    RootView()
        .environmentObject(Router.shared)
}
