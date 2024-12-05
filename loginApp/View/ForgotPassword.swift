//
//  ForgotPassword.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct ForgotPassword: View {
    @State var password: String = ""
    @State var repeatedPassword: String = ""

    var body: some View {
        VStack {
            Text("Reset password")
                .bold()
                .font(.title2)
                .hAlign(.leading)
                .padding(.bottom)
            Text("Password").foregroundStyle(.secondary).hAlign(.leading)
            SecureField("", text: $password)
                .textContentType(.password)
                .autocapitalization(.none)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )

            Text("At least 8 character and 1 special character")
                .foregroundStyle(.secondary)
                .hAlign(.leading)
                .font(.caption)
                .padding(.bottom)

            Text("Repeat password").foregroundStyle(.secondary).hAlign(.leading)

            SecureField("", text: $repeatedPassword)
                .textContentType(.password)
                .autocapitalization(.none)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )

            Text("Both passwords must match")
                .foregroundStyle(.secondary)
                .hAlign(.leading)
                .padding(.bottom)
                .font(.caption)

            HStack {
                Button {

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

            }.padding(.top)

        }.hAlign(.leading).vAlign(.top).padding()
    }
}

#Preview {
    ForgotPassword()
}
