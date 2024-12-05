//
//  LoginView.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct LoginView: View {
    @State var emailID: String = ""
    @State var password: String = ""
    @State var rememberMe: Bool = false

    var body: some View {
        VStack {
            Text("Login")
                .bold()
                .font(.title2)
                .hAlign(.leading)
                .padding(.bottom)
            Text("Email").foregroundStyle(.secondary).hAlign(.leading)
            TextField("", text: $emailID)
                .textContentType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding(.bottom)
            Text("Password").foregroundStyle(.secondary).hAlign(.leading)

            SecureField("", text: $password)
                .textContentType(.password)
                .autocapitalization(.none)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                ).padding(.bottom)

            Button {

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
            }.padding(.top)

            HStack {
                Text("Don't have an account?")
                    .foregroundStyle(.secondary)
                Button {

                } label: {
                    Text("Sign up")
                        .underline()

                }
            }.padding(.vertical)

            Button(action: {
                print("Login with Google tapped")
            }) {
                HStack {
                    Image("GoogleIcon") // Ícone do Google
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Login with Google")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                )
                .padding(.bottom)
            }

            Button(
                action: {

                }
            ) {
                HStack {
                    Spacer()
                    Image("AppleIcon")
                        .resizable()
                        .frame(width: 20, height: 23)
                    Text("Login with Apple")
                        .font(.headline)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                )
            }


        }.hAlign(.leading).vAlign(.top).padding()

    }
}

extension View {
    func hAlign(_ alignment: Alignment) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }

    func vAlign(_ alignment: Alignment) -> some View {
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
}

#Preview {
    LoginView()
}
