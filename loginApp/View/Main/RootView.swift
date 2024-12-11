//
//  ContentView.swift
//  loginApp
//
//  Created by Henrique Delgado on 06/12/24.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var router: Router

    @State var showSignup: Bool = false

    var body: some View {
        NavigationStack {
            switch router.currentView {
            case .tabManager:
                HomeView()
            case .onLogin:
                LoginView()
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
