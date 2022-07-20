//
//  BoilRatingView.swift
//  PassingGas
//
//  Created by Kyle Peterson on 7/20/22.
//

import SwiftUI

struct BoilRatingView: View {
    
    var boilRating: Double
    
    var body: some View {
        ZStack {
                    Circle()
                        .stroke(lineWidth: 5.0)
                        .opacity(0.3)
                        .foregroundColor(Color.teal)
                    
                    Circle()
                        .trim(from: 0.0, to: CGFloat(min(self.boilRating, 1.0)))
                        .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
                        .foregroundColor(Color.teal)
                        .rotationEffect(Angle(degrees: 270.0))
                        .animation(.linear)

                    Text(String(format: "%.0f %%", min(self.boilRating, 1.0)*100.0))
                        .font(.caption)
                        .bold()
                }
    }
}

