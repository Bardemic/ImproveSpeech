//
//  ContentView.swift
//  ImproveSpeech
//
//  Created by Brandon Pieczka on 1/21/25.
//

import SwiftUI

extension Color {
    static let backgroundColor = Color(red: 0.156, green: 0.161, blue: 0.341)
    static let foregroundColor = Color(red: 0.266, green: 0.271, blue: 0.646)
}

struct ContentView: View {
    var isOnboarded = true
    var body: some View {
        NavigationStack {
            if(isOnboarded) {
                Home()            }
            else {
                Onboarding()
            }
        }
        
    }
        
    
}

#Preview {
    ContentView()
}
