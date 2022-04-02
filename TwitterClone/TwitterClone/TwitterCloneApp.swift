//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Ataberk on 18.03.2022.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
