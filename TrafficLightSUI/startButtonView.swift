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
        Button(action: action) {
            Text(text)
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
    }
}

