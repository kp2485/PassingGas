//
//  ENRatingView.swift
//  PassingGas
//
//  Created by Kyle Peterson on 7/20/22.
//

import SwiftUI

struct ENRatingView: View {
    
    var enRating: Double
    
    var body: some View {
        ZStack {
                    Circle()
                        .stroke(lineWidth: 5.0)
                        .opacity(0.3)
                        .foregroundColor(Color.pink)
                    
                    Circle()
                        .trim(from: 0.0, to: CGFloat(min(self.enRating, 1.0)))
                        .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
                        .foregroundColor(Color.pink)
                        .rotationEffect(Angle(degrees: 270.0))

                    Text(String(format: "%.0f%%", min(self.enRating, 1.0)*100.0))
                        .font(.caption)
                        .bold()
                }
    }
}
