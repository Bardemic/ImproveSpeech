//
//  Onboarding.swift
//  ImproveSpeech
//
//  Created by Brandon Pieczka on 1/26/25.
//

import SwiftUI

struct Page1: View {
    var nextPage: () -> Void
    var body: some View {
        Text("ImproveSpeech helps improve public speaking abilities")
            .font(.title)
            .bold()
            .foregroundColor(.white)
            .padding(.bottom)
        VStack(alignment: .leading, spacing: 32) {
            HStack(spacing: 12) {
                Text("O")
                    .foregroundColor(Color.foregroundColor)
                Text("You guide your own practice, or be given some custom practice!")
                    .font(.subheadline)
                    .foregroundColor(Color(hue: 0.675, saturation: 0.508, brightness: 0.973))
            }
            HStack(spacing: 12) {
                Text("O")
                    .foregroundColor(Color.foregroundColor)
                Text("Learn why")
                    .font(.subheadline)
                    .foregroundColor(Color(hue: 0.675, saturation: 0.508, brightness: 0.973))
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        Spacer()
        Text("Get started!")
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding()
            .background(Color.foregroundColor)
            .foregroundColor(.white)
            .cornerRadius(12)
            .onTapGesture{nextPage()}
            
    }
}

struct Onboarding: View {
    @State var page = 1
    var total = 4
    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Spacer()
                ForEach((1...total), id: \.self) {
                    Rectangle()
                        .fill($0 > page ? Color.red : Color.blue)
                        .frame(height: 10)
                        .cornerRadius(20)
                    
                }
                .padding(.vertical, 8)
                Spacer()
            }
            .padding(.bottom, 12)
            if(page == 1) {
                Page1(nextPage: {page += 1})
            }
        }
        .padding(.horizontal, 32)
        .padding(.bottom)
        .background(Color.backgroundColor)
    }
}

#Preview {
    Onboarding()
}
