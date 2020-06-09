//
//  InventoryFactory.swift
//  InventoryApp
//
//  Created by Nathan Birkholz on 6/9/20.
//  Copyright © 2020 Nathan Birkholz. All rights reserved.
//

import Foundation

struct InventoryFactory {
    static func createInventory() -> [Object] {
        var inventory = [Object]()
        
        inventory.append(Book(name: "To Kill a Mockingbird", color: "orange", year: 1960, author: "Harper Lee", publisher: "J. B. Lippincott & Co."))
        inventory.append(Phone(name: "iPhone XR", color: "space gray", year: 2018, carrier: "AT&T", manufacturer: "Apple"))
        inventory.append(Car(name: "Elantra", color: "silver", year: 2012, make: "Hyundai", doors: 4))
        inventory.append(Book(name: "The Fellowship of the Ring", color: "brown", year: 1954, author: "J. R. R. Tolkien", publisher: "George Allen & Unwin"))
        inventory.append(Phone(name: "Pixel 4", color: "black", year: 2019, carrier: "Verizon", manufacturer: "Google"))
        inventory.append(Car(name: "Tiguan", color: "white", year: 2017, make: "Volkswagen", doors: 4))
        
        return inventory
    }
}
