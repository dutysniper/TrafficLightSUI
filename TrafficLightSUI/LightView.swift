//
//  LightView.swift
//  TrafficLightSUI
//
//  Created by Константин Натаров on 08.06.2023.
//

import SwiftUI

struct LightView: View {
    let color: Color
    
    var body: some View {
        let size = 0.23 * UIScreen.main.bounds.height
        let xOffset = (UIScreen.main.bounds.width - size) / 2
        let yOffset = (UIScreen.main.bounds.height - size) / 2
        
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .frame(width: size, height: size)
                    .foregroundColor(color)
                    .overlay(Circle().stroke(lineWidth: 2))
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2) // Center the circle within the GeometryReader
                
                Circle()
                    .frame(width: size, height: size)
                    .foregroundColor(color.opacity(0))
                    .overlay(
                        Circle()
                            .stroke(lineWidth: size * 0.067)
                            .blur(radius: size * 0.067)
                            .offset(x: 0, y: 0)
                            .mask(
                                Circle()
                                    .frame(width: size, height: size)
                                    .foregroundColor(.white)
                                    .blur(radius: size * 0.067)
                            )
                    )
                    .shadow(color: color.opacity(0.7), radius: size * 0.067)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2) // Center the circle within the GeometryReader
            }
        }
        .frame(width: size, height: size) // Set GeometryReader frame size to Circle frame size
    }
}


struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red)
    }
}
