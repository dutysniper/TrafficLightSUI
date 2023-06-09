//
//  startButtonView.swift
//  TrafficLightSUI
//
//  Created by Константин Натаров on 09.06.2023.
//

import SwiftUI

struct startButtonView: View {
    let action: () -> Void
    let text: String
    
    var body: some View {
        let size = 0.21 * UIScreen.main.bounds.height
        
        Button(action: action) {
            Text(text)
                .foregroundColor(.white)
                .dynamicTypeSize(.large)
                .frame(width: size, height: size / 3)
                .background(Color.blue)
                .cornerRadius(size)
        }
        .overlay(
            RoundedRectangle(cornerRadius: size)
                .stroke(Color.yellow, lineWidth: 2)
        )
    }
}

