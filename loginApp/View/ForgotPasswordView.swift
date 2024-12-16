//
//  ForgotPassword.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct ForgotPasswordView: View {
    @Binding var loginNavigation: LoginModel.Destination?
    @Binding var email: String
    @Binding var loginPassword: String

    @State var password: String = ""
    @State var repeatedPassword: String = ""
    @State var emailID: String = ""
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack {
            Text("Reset password")
                .bold()
                .font(.title2)
                .hAlign(.leading)

            CustomTF(hint: "Email", value: $emailID)

            CustomTF(hint: "New password", isPassword: true, value: $password)
                .padding(.vertical)

            CustomTF(hint: "Confirm new password", isPassword: true, value: $repeatedPassword)
                .padding(.bottom)

            Button {
                email = emailID
                loginPassword = password
                loginNavigation = nil
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
        }.padding()
    }
}

#Preview {
    RootView()
        .environmentObject(Router.shared)

}
