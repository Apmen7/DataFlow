//
//  DataFlowApp.swift
//  DataFlow
//
//  Created by Vasichko Anna on 24.07.2023.
//

import SwiftUI

@main
struct DataFlowApp: App {
    @StateObject private var userSettings = UserSettings()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(userSettings)
        }
    }
}
