//
//  TableViewController.swift
//  Example
//
//  Created by HocTran on 11/10/19.
//  Copyright © 2019 Hoc Tran. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let items = ["Custom tableview cell", "Custome tableview cell with nib"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerCell(NibTableViewCell.self)
        tableView.registerCell(TableViewCell.self)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let text = items[indexPath.item]
        if indexPath.item == 0 {
            let cell = tableView.dequeueCell(TableViewCell.self, at: indexPath)
            cell.textLabel?.text = text
            return cell
        } else {
            let cell = tableView.dequeueCell(NibTableViewCell.self, at: indexPath)
            cell.textLabel?.text = text
            return cell
        }
    }

}
