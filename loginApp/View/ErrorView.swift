//
//  ErrorView.swift
//  loginApp
//
//  Created by Henrique Delgado on 09/12/24.
//

import SwiftUI

struct ErrorView: View {
    var error: String

    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image(systemName: "xmark.octagon")
                .foregroundColor(.red)
                .font(.system(size: 61))
            Text("Something went wrong.")
                .font(.title2)
                .bold()
            Text(error)
                .lineLimit(nil)
            Spacer()
            Spacer()
        }.padding()
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: "Lorem ipsum lorem ipsum psum lorem ipsum psum lorem ipsum loren")
            .environmentObject(Router.shared)

    }
}
