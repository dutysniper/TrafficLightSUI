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
        ZStack {
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(color)
                .overlay(Circle().stroke(lineWidth: 2))
            
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(color.opacity(0))
                .overlay(
                    Circle()
                        .stroke(lineWidth: 10)
                        .blur(radius: 10)
                        .offset(x: 0, y: 0)
                        .mask(
                            Circle()
                                .frame(width: 150, height: 150)
                                .foregroundColor(.white)
                                .blur(radius: 10)
                        )
                )
                .shadow(color: color.opacity(0.7), radius: 10)
        }
    }
}


struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red)
    }
}
