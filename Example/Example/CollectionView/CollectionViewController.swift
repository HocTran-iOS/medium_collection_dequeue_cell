//
//  CollectionViewController.swift
//  Example
//
//  Created by HocTran on 11/10/19.
//  Copyright © 2019 Hoc Tran. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.registerCell(CollectionViewCell.self)
        self.collectionView.registerCell(NibCollectionViewCell.self)
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            let cell = collectionView.dequeueCell(CollectionViewCell.self, for: indexPath)
            cell.label.text = "Custom collection cell"
            return cell
        } else {
            let cell = collectionView.dequeueCell(NibCollectionViewCell.self, for: indexPath)
            cell.textLabel.text = "Custome collection cell with nib"
            return cell
        }
    }
}
