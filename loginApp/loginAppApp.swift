//
//  loginAppApp.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

@main
struct loginAppApp: App {
    @State private var loginModel = LoginModel()
    @StateObject private var router = Router()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(router)
                .environmentObject(loginModel)
        }
    }
}
