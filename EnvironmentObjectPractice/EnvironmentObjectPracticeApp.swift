//
//  EnvironmentObjectPracticeApp.swift
//  EnvironmentObjectPractice
//
//  Created by Brandon Jones on 6/19/24.
//

import SwiftUI

@main
struct EnvironmentObjectPracticeApp: App {
  
  @StateObject private var appState = AppState()
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(appState)
        }
    }
}
