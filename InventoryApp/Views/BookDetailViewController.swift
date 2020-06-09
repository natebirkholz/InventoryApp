//
//  BookDetailViewController.swift
//  InventoryApp
//
//  Created by Nathan Birkholz on 6/9/20.
//  Copyright © 2020 Nathan Birkholz. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var book: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        iconView.image = UIImage(named: "book")
        if let description = book?.description, let name = book?.name {
            descriptionLabel.text = description
            title = name
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
