//
//  RouterView.swift
//  loginApp
//
//  Created by Henrique Delgado on 09/12/24.
//

import SwiftUI

class Router: ObservableObject {
    @Published var currentView: RouterView = .onLogin

    static let shared = Router()

}

enum RouterView {
    case tabManager, onLogin
    case error(message: String)
}

