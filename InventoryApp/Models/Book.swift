//
//  Book.swift
//  InventoryApp
//
//  Created by Nathan Birkholz on 6/9/20.
//  Copyright © 2020 Nathan Birkholz. All rights reserved.
//

import Foundation

struct Book: Object {
    var name: String
    var color: String
    var type: ObjectType
    var year: Int
    
    let author: String
    let publisher: String
    
    init(name: String, color: String, year: Int, author: String, publisher: String) {
        self.name = name
        self.color = color
        self.year = year
        self.author = author
        self.publisher = publisher
        
        self.type = .book
    }
    
    var description: String {
        return "\(type.rawValue): \(name), by \(author), \(year), \(publisher). (\(color))"
    }
}
