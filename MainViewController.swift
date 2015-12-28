//
//  MainViewController.swift
//  SwiftDemo
//
//  Created by arvind on 12/26/15.
//  Copyright © 2015 arvind. All rights reserved.
//UITableViewDataSource, UITableViewDelegate

import UIKit


class MainViewController: UITableViewController {
    
    var items = ["Item 1", "Item2", "Item3", "Item4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(UINib(nibName: "cellTableViewCell", bundle: nil), forCellReuseIdentifier: "cellTableViewCell")
    }
    
    // MARK: - UITableViewDataSource
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: (UITableView!),
        cellForRowAtIndexPath indexPath: (NSIndexPath!))
        -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellTableViewCell", forIndexPath: indexPath) as! cellTableViewCell
        
        cell.middleLabel.text = items[indexPath.row]
        cell.leftLabel.text = items[indexPath.row]
        cell.rightLabel.text = items[indexPath.row]
        
        return cell
}
}