//
//  ContentView.swift
//  RotatingAngularGradient
//
//  Created by Sharad Jadhav on 16/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0.0
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    AngularGradient(
                        colors: [Color.blue, Color.green],
                        center: .center
                    )
                )
                .frame(width: 1000, height: 1000)
                .rotationEffect(.degrees(rotation))
                .onAppear(){
                    withAnimation(
                        Animation.linear(duration: 5).repeatForever(autoreverses: false)
                    ){
                        rotation = 360
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
