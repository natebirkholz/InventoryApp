//
//  Car.swift
//  InventoryApp
//
//  Created by Nathan Birkholz on 6/9/20.
//  Copyright © 2020 Nathan Birkholz. All rights reserved.
//

import Foundation

struct Car: Object {    
    var name: String
    var color: String
    var type: ObjectType
    var year: Int
    
    let make: String
    let doors: Int
    
    var description: String {
        return "\(type.rawValue): \(year) \(make) \(name), \(color), \(doors)-door."
    }
    
    init(name: String, color: String, year: Int, make: String, doors: Int) {
        self.name = name
        self.color = color
        self.year = year
        self.make = make
        self.doors = doors
        
        self.type = .car
    }

}
