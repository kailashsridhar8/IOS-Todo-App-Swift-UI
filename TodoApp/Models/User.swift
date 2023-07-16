//
//  User.swift
//  TodoApp
//
//  Created by Presidio on 15/07/23.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
