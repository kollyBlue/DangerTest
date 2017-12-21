//
//  DetailsViewController.swift
//  ToolIntegration
//
//  Created by Ongkosit, Thanaporn (Agoda) on 12/21/2560 BE.
//  Copyright © 2560 Ongkosit, Thanaporn (Agoda). All rights reserved.
//

import UIKit

class DetailsViewController: ViewController {

    var tableView: UITableView = UITableView()
    var result: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupInitialState() {
        tableView.estimatedRowHeight = 44;
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.register(UINib(nibName: "HotelListCell", bundle: nil), forCellReuseIdentifier: "hotelCell")
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    func updateTable() {
        tableView.reloadData()
    }
    
    func displayFailedLoadingMessage() {
        
    }

}
