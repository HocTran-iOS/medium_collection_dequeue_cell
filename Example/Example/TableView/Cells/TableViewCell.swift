//
//  TableViewCell.swift
//  Example
//
//  Created by HocTran on 11/10/19.
//  Copyright © 2019 Hoc Tran. All rights reserved.
//

import UIKit

final class TableViewCell: UITableViewCell {
}

extension TableViewCell: Reusable {
    static var reuseId: String {
        return "TableViewCell"
    }
}
