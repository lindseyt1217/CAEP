//  HomeTableViewController.swift
//  CAEP2

//  Created by Kode With Klossy on 8/3/18.
//  Copyright © 2018 Kode With Klossy. All rights reserved.

import UIKit

class HomeTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "placeholder text"
        cell.imageView?.image = UIImage(named: "cameraIcon")
        return cell
    }

}
