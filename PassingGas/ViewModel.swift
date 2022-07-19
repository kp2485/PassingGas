//
//  ViewModel.swift
//  PassingGas
//
//  Created by Kyle Peterson on 7/18/22.
//

import Foundation

class ReadElementData: ObservableObject  {
    @Published var elements = [Element]()
    
    init(){
        loadElementData()
    }
    
    func loadElementData()  {
        guard let url = Bundle.main.url(forResource: "periodic_table", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let elements = try? JSONDecoder().decode([Element].self, from: data!)
        self.elements = elements!
        
    }
     
}
