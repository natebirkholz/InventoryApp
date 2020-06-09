//
//  ViewController.swift
//  InventoryApp
//
//  Created by Nathan Birkholz on 6/9/20.
//  Copyright © 2020 Nathan Birkholz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var inventory = [Object]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView.init(frame: .zero)
        tableView.register(UINib(nibName: "ObjectTableViewCell", bundle: nil), forCellReuseIdentifier: "OBJECT_CELL")
        
        inventory = InventoryFactory.createInventory()
        
        title = "Inventory"
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inventory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "OBJECT_CELL", for: indexPath) as? ObjectTableViewCell else {
            return UITableViewCell()
        }
        
        let object = inventory[indexPath.row]
        
        cell.typeLabel.text = object.type.rawValue
        cell.descriptionLabel.text = object.description
        
        switch object.type {
        case .book:
            cell.iconView.image = UIImage(named: "book")
        case .car:
            cell.iconView.image = UIImage(named: "car")
        case .phone:
            cell.iconView.image = UIImage(named: "phone")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let object = inventory[indexPath.row]
        
        switch object.type {
        case .book:
            if let book = object as? Book {
                let detail = BookDetailViewController()
                detail.book = book
                navigationController?.pushViewController(detail, animated: true)
            }
        case .car:
            if let car = object as? Car {
                let detail = CarDetailViewController()
                detail.car = car
                navigationController?.pushViewController(detail, animated: true)
            }
        case .phone:
            if let phone = object as? Phone {
                let detail = PhoneDetailViewController()
                detail.phone = phone
                navigationController?.pushViewController(detail, animated: true)
            }
        }
    }
    
}

