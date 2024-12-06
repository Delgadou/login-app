//
//  LoginView.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct LoginView: View {
    @Binding var showForgotPassword: Bool
    @Binding var showSignup: Bool
    @State private var emailID: String = ""
    @State private var password: String = ""
    @State private var showForgotPasswordView: Bool = false

    var body: some View {
        VStack {
            Text("Login")
                .bold()
                .font(.title2)
                .hAlign(.leading)
                .padding(.bottom)

            CustomTF(hint: "Email", value: $emailID)

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

            } label: {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }.disabled(emailID.isEmpty || password.isEmpty)
                .padding(.bottom)


            HStack {
                Text("Don't have an account?")
                    .foregroundStyle(.secondary)
                Button {
                    showSignup.toggle()
                    //path.append(NavigationDestinations.RegisterView)
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

//#Preview {
//    @Previewable @State var showSignup: Bool = false
//
//    //LoginView()
//}
