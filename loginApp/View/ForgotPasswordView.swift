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
    @State private var emailID: String = ""
    @Binding var viewModel: LoginModel


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
                viewModel.resetPassword(email: emailID, newPassword: password)
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
