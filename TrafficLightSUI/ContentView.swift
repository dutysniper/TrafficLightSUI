//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Константин Натаров on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    private let lightOff = 0.3
    private let lightOn = 1.0
    
    @State private var currentColor: ChangeColor = .green
    @State private var buttonName = "START"
    
    var body: some View {
        VStack {
            VStack(spacing: 15) {
                LightView(color: .red)
                    .opacity(currentColor == .red ? lightOn : lightOff)
                LightView(color: .yellow)
                    .opacity(currentColor == .yellow ? lightOn : lightOff)
                LightView(color: .green)
                    .opacity(currentColor == .green && buttonName == "NEXT" ? lightOn : lightOff)
            }
            .animation(.easeInOut(duration: 0.8), value: currentColor)
            Spacer()
            Button(action: changeLight) {
                Text(buttonName)
                    .foregroundColor(.white)
                    .padding(
                        EdgeInsets(
                            top: 15,
                            leading: 40,
                            bottom: 15,
                            trailing: 40
                        )
                    )
                    .background(Color.blue)
                    .cornerRadius(20)
            }
            .frame(width: 150)
        }
        .padding(EdgeInsets(top: 30, leading: 16, bottom: 16, trailing: 16))
    }
    
    private func changeLight() {
        if buttonName == "START" {
            buttonName = "NEXT"
        }
        switch currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
            currentColor = .green
        case .green:
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    enum ChangeColor {
        case red
        case yellow
        case green
    }
}
