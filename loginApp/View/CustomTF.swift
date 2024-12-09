//
//  CustomTF.swift
//  loginApp
//
//  Created by Henrique Delgado on 06/12/24.
//

import SwiftUI

struct CustomTF: View {
    var iconTint: Color = .gray
    var hint: String
    var isPassword: Bool = false
    @Binding var value: String
    @State private var showPassword: Bool = false

    var body: some View {
        HStack(alignment: .top, spacing: 8, content:  {
            VStack(alignment: .leading, spacing: 8, content: {
                if isPassword {
                    Group {
                        if showPassword {
                            TextField(hint, text: $value)
                                .autocapitalization(.none)
                                .padding(.all, 10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                        } else {
                            SecureField(hint, text: $value)
                                .autocapitalization(.none)
                                .padding(.all, 10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                        }
                    }
                } else {
                    TextField(hint, text: $value)
                        .autocapitalization(.none)
                        .padding(.all, 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
            })
            .overlay(alignment: .trailing) {
                if isPassword {
                    Button(action: {
                        withAnimation {
                            showPassword.toggle()
                        }
                    }, label: {
                        Image(systemName: showPassword ? "eye.slash" : "eye")
                            .foregroundStyle(iconTint)
                            .padding(10)
                            .contentShape(.rect)
                    })
                }
            }
        })
    }
}
//
//#Preview {
//    //LoginView()
//}
