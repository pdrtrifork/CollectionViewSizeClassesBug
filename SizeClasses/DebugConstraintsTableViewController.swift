//
//  DebugConstraintsTableViewController.swift
//  SizeClasses
//
//  Created by Peder Toftegaard Olsen on 14/09/15.
//  Copyright © 2015 Trifork GmbH. All rights reserved.
//

import UIKit

class DebugConstraintsTableViewController: UITableViewController {
    var constraints:[NSLayoutConstraint] = [] {
        didSet {
            self.tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = 100
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss", style: UIBarButtonItemStyle.Plain, target: self, action: Selector("dismissTapped:"))
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.constraints.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let constraint = self.constraints[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
        cell.textLabel?.text = constraint.description
        cell.accessoryType = constraint.active ? UITableViewCellAccessoryType.Checkmark : UITableViewCellAccessoryType.None
        return cell
    }
    

    // MARK: - Actions
    
    func dismissTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
