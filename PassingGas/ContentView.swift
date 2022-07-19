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

                        Spacer()
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
