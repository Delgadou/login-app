//
//  LoginView.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

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

            NavigationLink("Forgot password?", value: LoginDestination.ForgotPasswordView)
                .foregroundStyle(Color.gray)
                .hAlign(.trailing)
                .padding(.bottom)

//            Button {
//
//            } label: {
//                Text("Forgot password?")
//                    .foregroundStyle(Color.gray)
//                    .underline()
//                    .hAlign(.trailing)
//            }.padding(.bottom)

            NavigationLink("Login", value: LoginDestination.HomeView)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding(.bottom)

            Button {
                //loginModel.login(email: loginModel.email, password: loginModel.password)
            } label: {
                Text("Login")

            }.padding(.bottom)
//
//                            .alert("Senha incorreta", isPresented: $loginModel.isLoggedIn){
//            
//                            }
//                        message: {
//                            Text("Tenta novamente")
//                        }

            HStack {
                Text("Don't have an account?")
                    .foregroundStyle(.secondary)

                NavigationLink("Sign up", value: LoginDestination.SignupView)

//                Button {
//
//                } label: {
//                    Text("Sign up")
//                        .underline()
//                }
            }
        }.padding()
            .vAlign(.center)
            .navigationDestination(for: LoginDestination.self) { destination in
                switch destination {
                case .HomeView: HomeView()
                case .SignupView: SignupView()
                case .ForgotPasswordView: ForgotPasswordView()
                case .LoginView:
                    LoginView().self
                }
            }

        //            .navigationDestination(isPresented: $loginModel.isLoggedIn) {
        //                HomeView()
        //            }
        //            .navigationDestination(isPresented: $loginModel.isLoggedIn) {
        //                SignupView()
        //            }
        //            .navigationDestination(isPresented: $loginModel.isLoggedIn) {
        //                ForgotPasswordView()
        //            }
    }
}

#Preview {
    RootView()
        .environmentObject(Router.shared)
}
