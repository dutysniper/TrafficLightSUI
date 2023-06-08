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
    
    @State private var changeColor: ChangeColor = .red
    @State private var redLightOpacity = 0.3
    @State private var yellowLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3
    @State private var buttonName = "START"
    
    var body: some View {
        VStack {
            VStack(spacing: 40) {
                LightView(color: .red)
                    .opacity(redLightOpacity)
                LightView(color: .yellow)
                    .opacity(yellowLightOpacity)
                LightView(color: .green)
                    .opacity(greenLightOpacity)
            }
            .animation(.easeInOut(duration: 0.8), value: changeColor)
            .padding()
            Spacer()
            Button(action: changeLight) {
                Text(buttonName)
                    .foregroundColor(.white)
                    .padding(15)
                    .background(Color.blue)
                    .cornerRadius(20)
            }
        }
    }
    
    private func changeLight() {
        if buttonName == "START" {
            buttonName = "NEXT"
        }
        switch changeColor {
        case .red:
            greenLightOpacity = lightOff
            redLightOpacity = lightOn
            changeColor = .yellow
        case .yellow:
            redLightOpacity = lightOff
            yellowLightOpacity = lightOn
            changeColor = .green
        case .green:
            yellowLightOpacity = lightOff
            greenLightOpacity = lightOn
            changeColor = .red
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
