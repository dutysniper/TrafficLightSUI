//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Константин Натаров on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LightView(color: .red)
            LightView(color: .yellow)
            LightView(color: .green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
