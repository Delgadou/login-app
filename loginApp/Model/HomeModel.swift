//
//  HomeView.swift
//  loginApp
//
//  Created by Henrique Delgado on 10/12/24.
//

import SwiftUI
import SwiftUINavigation

@Observable
class HomeModel {
    var destination: HomeDestination = .HomeView

}

@CasePathable
enum HomeDestination {
    case HomeView
    case LoginView
    case SettingsView
}
