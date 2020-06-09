//
//  Object.swift
//  InventoryApp
//
//  Created by Nathan Birkholz on 6/9/20.
//  Copyright © 2020 Nathan Birkholz. All rights reserved.
//

import Foundation

protocol Object {
    var name: String { get set }
    var description: String { get }
    var color: String { get set }
    var type: ObjectType { get set }
    var year: Int { get set }
}
