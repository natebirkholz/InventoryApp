//
//  CarDetailViewController.swift
//  InventoryApp
//
//  Created by Nathan Birkholz on 6/9/20.
//  Copyright © 2020 Nathan Birkholz. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var car: Car?

    override func viewDidLoad() {
        super.viewDidLoad()

        iconView.image = UIImage(named: "car")
        if let description = car?.description, let name = car?.name {
            descriptionLabel.text = description
            title = name
        }
    }
}
