//
//  ContentView.swift
//  PassingGas
//
//  Created by Kyle Peterson on 7/18/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var datas = ReadElementData()
    
    var body: some View {
        ZStack {
//            BackgroundView()
            List(datas.elements) { element in
                VStack(alignment: .leading) {
                    HStack {
                        ZStack {
                            Circle()
                                .frame(width: 30)
                                .foregroundColor(element.elementColor)
                            
                            Text(element.symbol)
                                .foregroundColor(.white)
                                                    }
                        Text(element.name)
                        if element.phase == .gas {
                            Image(systemName: "wind")
                                .rotationEffect(.degrees(-90))
                        } else if element.phase == .liquid {
                            Image(systemName: "drop.fill")
                        }
                        
//                        Text(element.appearance)


                        Spacer()
                    }
                    HStack {
                        VStack {
                            BoilRatingView(boilRating: element.boilRating)
                                .frame(width: 40, height: 40)
                            .padding(.horizontal)
                            Text("Gas\nAffinity")
                                .font(.caption2)
                                .frame(height: 30)
                                .multilineTextAlignment(.center)
                        }
                        VStack {
                            MeltRatingView(meltRating: element.meltRating)
                                .frame(width: 40, height: 40)
                            .padding(.horizontal)
                            Text("Liquid\nAffinity")
                                .font(.caption2)
                                .frame(height: 30)
                                .multilineTextAlignment(.center)
                        }
                        VStack {
                            EARatingView(eaRating: element.electronAffinityRating)
                                .frame(width: 40, height: 40)
                            .padding(.horizontal)
                            Text("Electron\nAffinity")
                                .font(.caption2)
                                .frame(height: 30)
                                .multilineTextAlignment(.center)
                        }
                        VStack {
                            ENRatingView(enRating: element.electronegativityRating)
                                .frame(width: 40, height: 40)
                            .padding(.horizontal)
                            Text("Electro-\nnegativity")
                                .font(.caption2)
                                .frame(height: 30)
                                .multilineTextAlignment(.center)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
