//
//  MeltRatingView.swift
//  PassingGas
//
//  Created by Kyle Peterson on 7/20/22.
//

import SwiftUI

struct MeltRatingView: View {
    
    var meltRating: Double
    
    var body: some View {
        ZStack {
                    Circle()
                        .stroke(lineWidth: 5.0)
                        .opacity(0.3)
                        .foregroundColor(Color.blue)
                    
                    Circle()
                        .trim(from: 0.0, to: CGFloat(min(self.meltRating, 1.0)))
                        .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
                        .foregroundColor(Color.blue)
                        .rotationEffect(Angle(degrees: 270.0))

                    Text(String(format: "%.0f%%", min(self.meltRating, 1.0)*100.0))
                        .font(.caption)
                        .bold()
                }
    }
}
