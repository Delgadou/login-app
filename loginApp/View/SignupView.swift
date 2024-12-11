//
//  RegisterView.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct Signup: View {
    @State var userName: String = ""
    @State var emailID: String = ""
    @State var password: String = ""

    var body: some View {
        VStack {
            Text("Sign up")
                .bold()
                .font(.title2)
                .hAlign(.leading)
                .padding(.bottom)

            CustomTF(hint: "Name", value: $userName)
                .padding(.bottom)

            CustomTF(hint: "Email", value: $emailID)


            CustomTF(hint: "Password", isPassword: true, value: $password)
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
