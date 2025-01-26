//
//  CurrentlySpeaking.swift
//  ImproveSpeech
//
//  Created by Brandon Pieczka on 1/25/25.
//

import SwiftUI



struct TextComponent: View {
    @State var start = false
    var spokenText = "In this paper, I will be talking about the effects and consequences social media have had on student education."
    var body: some View {
        HStack{
            Spacer()
            VStack {
                Text(spokenText)
                    .font(.title2)
                    .foregroundColor(.white)
                Spacer()
                Spacer()
                Image(systemName: "cross")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 40.0, height: 40.0)
                    .background(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 100, height: 100)
                    )
            }
            Spacer()
        }
        .padding(40)
        .padding(.bottom, 60)
        .background(
            Rectangle()
                .fill(Color.foregroundColor)
        )
        .clipShape(UnevenRoundedRectangle(topLeadingRadius: 60.0, topTrailingRadius: 60.0))
        .ignoresSafeArea(edges: .bottom)
    }
}

struct CurrentlySpeaking: View {
    var body: some View {
        VStack {
            Spacer()
            Text("0:13")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding()
            Spacer()
            TextComponent()
                
        }
        .background(Color.backgroundColor)
    }
}

#Preview {
    CurrentlySpeaking()
}
