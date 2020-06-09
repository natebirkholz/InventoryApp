//
//  Phone.swift
//  InventoryApp
//
//  Created by Nathan Birkholz on 6/9/20.
//  Copyright © 2020 Nathan Birkholz. All rights reserved.
//

import Foundation

struct Phone: Object {
    var name: String
    var color: String
    var type: ObjectType
    var year: Int
    
    let carrier: String
    let manufacturer: String
    
    var description: String {
        return "\(type.rawValue): \(color) \(manufacturer) \(name), \(carrier), (\(year))."
    }
    
    init(name: String, color: String, year: Int, carrier: String, manufacturer: String) {
        self.name = name
        self.color = color
        self.year = year
        self.carrier = carrier
        self.manufacturer = manufacturer
        
        self.type = .phone
    }
    
}
