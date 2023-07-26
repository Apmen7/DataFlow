//
//  LoginView.swift
//  DataFlow
//
//  Created by Vasichko Anna on 24.07.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var name = ""
    @EnvironmentObject private var userSettings: UserSettings
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 80)
                if name.count < 3 {
                    Text("\(name.count)")
                        .foregroundColor(.red)
                        .padding(.trailing, 50)
                } else {
                    Text("\(name.count)")
                        .foregroundColor(.green)
                        .padding(.trailing, 50)
                }
            }
            Button(action: registerUser) {
                if name.count < 3 {
                    Label("OK", systemImage: "checkmark.circle")
                        .disabled(true)
                } else {
                    Label("OK", systemImage: "checkmark.circle")
                }
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            userSettings.name = name
            userSettings.isRegistered.toggle()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(UserSettings())
    }
}
