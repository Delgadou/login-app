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
            LoginView()
        }
    }
}

#Preview {
    RootView()
        .environmentObject(Router.shared)

}
