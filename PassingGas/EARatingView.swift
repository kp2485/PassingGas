//
//  EARatingView.swift
//  PassingGas
//
//  Created by Kyle Peterson on 7/20/22.
//

import SwiftUI

struct EARatingView: View {
    
    var eaRating: Double
    var rotationAngle: Double {
        if self.eaRating < 0 { return (270.0 + (360 * self.eaRating)) } else if self.eaRating >= 0 { return 270 }
        return 270
    }

    var body: some View {
        ZStack {
                    Circle()
                        .stroke(lineWidth: 5.0)
                        .opacity(0.3)
                        .foregroundColor(Color.indigo)

                    Circle()
                        .trim(from: 0.0, to: CGFloat(min(self.eaRating, 1.0)))
                        .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
                        .foregroundColor(Color.indigo)
                        .rotationEffect(Angle(degrees: rotationAngle))

                    Text(String(format: "%.0f%%", min(self.eaRating, 1.0)*100.0))
                        .font(.caption)
                        .bold()
                }
    }
}
