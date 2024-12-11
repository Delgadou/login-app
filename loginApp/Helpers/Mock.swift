//
//  Mock.swift
//  loginApp
//
//  Created by Henrique Delgado on 10/12/24.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var password: String

    static let mockData: [User] = [
        User(name: "Henrique Delgado", email: "henrique@delgado.com", password: "123456"),
        User(name: "Alice Silva", email: "alice@silva.com", password: "123456"),
        User(name: "Carlos Pereira", email: "carlos@pereira.com", password: "123456"),
        User(name: "Beatriz Souza", email: "beatriz@souza.com", password: "123456"),
        User(name: "Diego Oliveira", email: "diego@oliveira.com", password: "123456"),
        User(name: "Fernanda Lima", email: "fernanda@lima.com", password: "123456"),
        User(name: "Gustavo Santos", email: "gustavo@santos.com", password: "123456"),
        User(name: "Mariana Costa", email: "mariana@costa.com", password: "123456"),
        User(name: "Rafael Nunes", email: "rafael@nunes.com", password: "123456"),
        User(name: "Juliana Almeida", email: "juliana@almeida.com", password: "123456")
    ]
}
