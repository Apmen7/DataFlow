//
//  RootView.swift
//  DataFlow
//
//  Created by Vasichko Anna on 24.07.2023.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var userSettings: UserSettings
    
    var body: some View {
        Group {
            if userSettings.isRegistered {
                ContentView()
            } else {
                LoginView()
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(UserSettings())
    }
}
