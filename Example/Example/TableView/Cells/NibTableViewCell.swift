//
//  NibTableViewCell.swift
//  Example
//
//  Created by HocTran on 11/10/19.
//  Copyright © 2019 Hoc Tran. All rights reserved.
//

import UIKit

final class NibTableViewCell: UITableViewCell {
    
}

extension NibTableViewCell: Reusable, NibInstancable {
    static var nibName: String {
        return "NibTableViewCell"
    }
    
    static var reuseId: String {
        return "NibTableViewCell"
    }
}
