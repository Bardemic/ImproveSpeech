//
//  Home.swift
//  ImproveSpeech
//
//  Created by Brandon Pieczka on 1/25/25.
//

import SwiftUI


struct Header: View {
    let name: String
    var body: some View {
        Text("Welcome back, " + name + "!")
            .font(.title)
            .foregroundColor(.white)
    }
}

struct NewSpeechButton: View {
    var body: some View {
        HStack {
            Spacer()
            NavigationLink("New Speech") {
                NewSpeechForm()
            }
                .padding(16)
                .background(Color.foregroundColor)
                .foregroundColor(.white)
            .cornerRadius(16.0)
        }
        .padding(.horizontal, 32)
    }
}

struct Streak: View {
    let days: String
    var body: some View {
        VStack(alignment: .center) {
            Text(days)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .trim(from: 0.17, to: 0.83)
                        .stroke(Color.white, style: StrokeStyle(lineWidth: 2, lineCap: .round))
                        .frame(width: 100, height: 100)
                        .rotationEffect(.degrees(90))
                        .offset(y:20)
            )
            Text("Days")
                .foregroundColor(.white)
                .font(.title)
        }
        
                    
    }
}

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
                    .foregroundColor(Color(hue: 0.883, saturation: 0.489, brightness: 1.0))
            }
            Spacer()
            VStack {
                Text(accuracy)
                Text("accuracy")
                    .foregroundColor(Color(hue: 0.883, saturation: 0.489, brightness: 1.0))
            }
            Spacer()
            VStack {
                Text(filler + "%")
                Text("filler")
                    .foregroundColor(Color(hue: 0.883, saturation: 0.489, brightness: 1.0))
            }
            Spacer()
            VStack {
                Text(wordChoice + "%")
                Text("word choice")
                    .foregroundColor(Color(hue: 0.883, saturation: 0.489, brightness: 1.0))
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
        .background(Color.foregroundColor)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 2)
        .frame(maxWidth: .infinity)
        .containerRelativeFrame(.horizontal, count: 100, span: 80, spacing: 0)
        .foregroundColor(.white)
    }
}

struct Home: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Header(name: "Brandon")
            Spacer()
            Streak(days: "5")
            Spacer()
            Stats(wpm: "48", accuracy: "N/A", filler: "2", wordChoice: "96")
            Spacer()
            VStack (alignment: .leading, spacing: 8) {
                Text("Recent Speeches")
                    .foregroundColor(.white)
                CardView(title: "English Paper", description: "Second Try", wpm: "48")
                CardView(title: "English Paper", description: "First Try", wpm:"52")
            }
            Spacer()
            NewSpeechButton()
            Spacer()
        }
        .padding(.top, 40)
        .background(Color.backgroundColor)
    }
}


#Preview {
    Home()
}
