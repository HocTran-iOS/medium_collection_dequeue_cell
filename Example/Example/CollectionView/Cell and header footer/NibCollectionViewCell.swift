//
//  NibCollectionViewCell.swift
//  Example
//
//  Created by HocTran on 11/23/19.
//  Copyright © 2019 Hoc Tran. All rights reserved.
//

import UIKit

class NibCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var textLabel: UILabel!
}

extension NibCollectionViewCell: Reusable, NibInstancable {
    static var nibName: String {
        return "NibCollectionViewCell"
    }
    
    static var reuseId: String {
        return "NibCollectionViewCell"
    }
}
