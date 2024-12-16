//
//  RegisterView.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct SignupView: View {
    @State var signUpModel = SignupModel()
    @Binding var destination: LoginModel.Destination?

    var body: some View {
        VStack {
            Text("Sign up")
                .bold()
                .font(.title2)
                .hAlign(.leading)
                .padding(.bottom)

            CustomTF(hint: "Name", value: $signUpModel.name)
                .padding(.bottom)

            CustomTF(hint: "Email", value: $signUpModel.email)

            CustomTF(hint: "Password", isPassword: true, value: $signUpModel.password)
                .padding(.vertical, 15)

            Button {
                
            } label: {
                Text("Sign up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }.padding(.top)

            HStack {
                Text("Already have an account?")
                    .foregroundStyle(.secondary)
                Button {
                    destination = nil
                } label: {
                    Text("Log in")
                        .underline()
                }
            }.padding(.vertical)
        }
        .vAlign(.center).padding()
    }
}

#Preview {
    RootView()
        .environmentObject(Router.shared)
}
