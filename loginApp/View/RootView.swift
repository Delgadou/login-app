//
//  ContentView.swift
//  loginApp
//
//  Created by Henrique Delgado on 06/12/24.
//

import SwiftUI

struct RootView: View {
    @State private var showSignup: Bool = false
    @State private var showForgotPassword: Bool = false
    @State private var showHome: Bool = false


    var body: some View {
        NavigationStack {
            LoginView(showForgotPassword: $showForgotPassword, showSignup: $showSignup)
                .navigationDestination(isPresented: $showSignup) {
                    Signup(showSignup: $showSignup)
                }
                .navigationDestination(isPresented: $showForgotPassword) {
                    ForgotPasswordView(showForgotPassword: $showForgotPassword)
                }
        }
    }
}

#Preview {
    RootView()
}
