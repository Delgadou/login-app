//
//  ContentView.swift
//  loginApp
//
//  Created by Henrique Delgado on 06/12/24.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var router: Router

    @State private var showSignup: Bool = false
    @State private var showForgotPassword: Bool = false
    @State private var showHome: Bool = false

    @StateObject private var viewModel = LoginModel()


    var body: some View {
        NavigationStack {
            switch router.currentView {
            case .tabManager:
                HomeView()
            case .onLogin:
                LoginView(showForgotPassword: $showForgotPassword, showSignup: $showSignup, viewModel: viewModel)
                    .navigationDestination(isPresented: $showSignup) {
                        Signup(showSignup: $showSignup)
                    }
                    .navigationDestination(isPresented: $showForgotPassword) {
                        ForgotPasswordView(showForgotPassword: $showForgotPassword, viewModel: $viewModel)
                    }
            case .error(let message):
                ErrorView(error: message)
            }
        }
    }
}

#Preview {
    RootView()
        .environmentObject(Router.shared)

}
