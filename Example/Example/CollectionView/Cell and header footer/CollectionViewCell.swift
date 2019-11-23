//
//  CollectionViewCell.swift
//  Example
//
//  Created by HocTran on 11/23/19.
//  Copyright © 2019 Hoc Tran. All rights reserved.
//

import UIKit

final class CollectionViewCell: UICollectionViewCell {
    lazy var label = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        label.frame = CGRect(origin: .zero, size: frame.size)
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CollectionViewCell: Reusable {
    static var reuseId: String {
        return "CollectionViewCell"
    }
}
