//
//  HomeView.swift
//  loginApp
//
//  Created by Henrique Delgado on 05/12/24.
//

import SwiftUI

struct HomeView: View {
    @State var homeModel = HomeModel()

    var body: some View {
        Text("Welcome to Monte Cristo Studio")
        Button {
            
        } label: {
            Text("Log out")
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(Router.shared)

}
