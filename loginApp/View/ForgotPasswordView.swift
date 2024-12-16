//
//  ForgotPassword.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var forgotPasswordModel = ForgotPasswordModel()

    @Binding var loginNavigation: LoginModel.Destination?
    @Binding var email: String
    @Binding var loginPassword: String

    var body: some View {
        VStack {
            Text("Reset password")
                .bold()
                .font(.title2)
                .hAlign(.leading)

            CustomTF(hint: "Email", value: $forgotPasswordModel.email)

            CustomTF(hint: "New password", isPassword: true, value: $forgotPasswordModel.password)
                .padding(.vertical)

            CustomTF(hint: "Confirm new password", isPassword: true, value: $forgotPasswordModel.confirmPassword)
                .padding(.bottom)

            Button {
                forgotPasswordModel.resetPasswordButtonPressed(loginEmail: $email, loginPassword: $loginPassword, loginDestination: $loginNavigation)
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
