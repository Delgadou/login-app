//
//  HomeView.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: Router

    var body: some View {
        Text("Welcome to Monte Cristo Studio")
        Button {
            withAnimation {
                router.currentView = .onLogin
            }
        } label: {
            Text("Log out")
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(Router.shared)

}
