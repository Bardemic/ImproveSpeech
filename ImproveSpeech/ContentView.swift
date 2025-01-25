//
//  ContentView.swift
//  ImproveSpeech
//
//  Created by Brandon Pieczka on 1/21/25.
//

import SwiftUI

struct Stats: View {
    let wpm: String
    let accuracy: String
    let filler: String
    let wordChoice: String
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Text(wpm + "/min")
                Text("wpm")
            }
            Spacer()
            VStack {
                Text(accuracy)
                Text("accuracy")
            }
            Spacer()
            VStack {
                Text(filler + "%")
                Text("filler")
            }
            Spacer()
            VStack {
                Text(wordChoice + "%")
                Text("word choice")
            }
            Spacer()
            
        }
        .foregroundColor(.white)
        .font(.title2)
    }
}

struct CardView: View {
    let title: String
    let description: String
    let wpm: String
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text(title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .lineLimit(1)
                    Spacer()
                }
                Text(description)
                    .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
            }
            
            
            
            VStack(spacing: 0) {
                HStack {
                    Text("Your WPM")
                        .font(.subheadline)
                    Spacer()
                    Text(wpm)
                }
                HStack {
                    Text("Your WPM")
                        .font(.subheadline)
                    Spacer()
                    Text(wpm)
                }
                HStack {
                    Text("Your WPM")
                        .font(.subheadline)
                    Spacer()
                    Text(wpm)
                }
                HStack {
                    Text("Your WPM")
                        .font(.subheadline)
                    Spacer()
                    Text(wpm)
                }
            }
            
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 12)
        .background(Color(red: 0.266, green: 0.271, blue: 0.646))
        .cornerRadius(20.0)
        .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 2)
        .frame(maxWidth: .infinity)
        .containerRelativeFrame(.horizontal, count: 100, span: 80, spacing: 0)
        .foregroundColor(.white)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Welcome back, Brandon!")
                .font(.title)
                .foregroundColor(.white)
            Spacer()
            Stats(wpm: "48", accuracy: "N/A", filler: "2", wordChoice: "96")
            Spacer()
            VStack (alignment: .leading, spacing: 8) {
                Text("Recent Speeches")
                    .foregroundColor(.white)
                CardView(title: "English Paper", description: "Second Try", wpm: "48")
                CardView(title: "English Paper", description: "First Try", wpm:"52")
            }
        }
        .padding(.top, 40)
        .background(Color(red: 0.156, green: 0.161, blue: 0.341))
    }
    
}

#Preview {
    ContentView()
}
