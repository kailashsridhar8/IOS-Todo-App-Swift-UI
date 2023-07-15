//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Presidio on 15/07/23.
//
import FirebaseCore
import SwiftUI

@main
struct TodoAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
