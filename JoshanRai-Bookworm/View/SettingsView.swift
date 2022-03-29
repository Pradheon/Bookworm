//
//  SettingsView.swift
//  JoshanRai-Bookworm
//
//  Created by Joshan Rai on 3/28/22.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.dismiss) var dismiss
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle("Dark Mode", isOn: $isDarkMode)
                } header: {
                    Text("Preffered Color Scheme")
                }
            }
            .navigationTitle("Settings")
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
