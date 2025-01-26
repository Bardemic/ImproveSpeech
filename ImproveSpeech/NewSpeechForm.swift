//
//  NewSpeechForm.swift
//  ImproveSpeech
//
//  Created by Brandon Pieczka on 1/25/25.
//

import SwiftUI



struct Switch: View {
    var header: String
    var radius = 12.0
    var body: some View {
        VStack(spacing: 2) {
            Text(header)
                .foregroundColor(.white)
            HStack(spacing: 0) {
                Spacer()
                Text("memory")
                    .padding(20)
                    .padding(.horizontal, 20)
                    .background(.pink)
                    .clipShape(UnevenRoundedRectangle(topLeadingRadius: radius, bottomLeadingRadius: radius))
                Text("a script")
                    .padding(20)
                    .padding(.horizontal, 20)
                    .background(.purple)
                    .clipShape(UnevenRoundedRectangle(bottomTrailingRadius: radius, topTrailingRadius: radius))
                Spacer()
            }
        }
        
    }
}

struct NewSpeechForm: View {
    var body: some View {
        VStack {
            Text("Start Talking")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            Spacer()
            Spacer()
            Spacer()
            VStack(spacing: 12) {
                Switch(header: "I'm reading from")
                Switch(header: "I'm reading from")
            }
            Spacer()
            Spacer()
            Spacer()
            NavigationLink(destination: CurrentlySpeaking(), label: {
                Image(systemName: "mic")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 40.0, height: 40.0)
                    .background(
                        Circle()
                            .fill(Color.foregroundColor)
                            .frame(width: 100, height: 100)
                    )
            })
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding(.vertical, 30)
            .foregroundColor(.white)
            
            Spacer()
        }
        .background(Color.backgroundColor)
    }
}

#Preview {
    NewSpeechForm()
}
