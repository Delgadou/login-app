//
//  ForgotPassword.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct ForgotPasswordView: View {
    @Binding var showForgotPassword: Bool
    @State var password: String = ""
    @State var repeatedPassword: String = ""

    var body: some View {
        VStack {
            Text("Reset password")
                .bold()
                .font(.title2)
                .hAlign(.leading)  

            CustomTF(hint: "Password", isPassword: true, value: $password)
                .padding(.vertical, 15)


            CustomTF(hint: "Repeat password", isPassword: true, value: $repeatedPassword)
                .padding(.vertical, 15)
                .padding(.bottom)

            HStack {
                Button {
                    showForgotPassword.toggle()
                } label: {
                    Text("Cancel")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(
                            RoundedRectangle(
                                cornerRadius: 10
                            )
                            .stroke(.gray, lineWidth: 1)
                        )
                }.padding(.trailing)

                Button {

                } label: {
                    Text("Reset")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            }
        }.vAlign(.center).padding()
    }
}

#Preview {
    RootView()
}
