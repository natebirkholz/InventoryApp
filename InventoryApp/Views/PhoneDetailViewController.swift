//
//  PhoneDetailViewController.swift
//  InventoryApp
//
//  Created by Nathan Birkholz on 6/9/20.
//  Copyright © 2020 Nathan Birkholz. All rights reserved.
//

import UIKit

class PhoneDetailViewController: UIViewController {
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var phone: Phone?

    override func viewDidLoad() {
        super.viewDidLoad()

        iconView.image = UIImage(named: "phone")
        if let description = phone?.description, let name = phone?.name {
            descriptionLabel.text = description
            title = name
        }
    }
}
