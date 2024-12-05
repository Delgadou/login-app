//
//  RegisterView.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct RegisterView: View {
    @State var emailID: String = ""
    @State var password: String = ""

    var body: some View {
        VStack {
            Text("Sign up")
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
        }.hAlign(.leading).vAlign(.top).padding()
    }
}

#Preview {
    RegisterView()
}
