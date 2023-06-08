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
        GeometryReader { geometry in
            Circle()
                .frame(
                    width:
                        geometry.size.width * 0.35,
                    height:
                        geometry.size.height * 0.35
                )
                .foregroundColor(color)
                .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                .position(
                    x: geometry.size.width / 2,
                    y: geometry.size.height / 2
                )
        }
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .brown)
    }
}
