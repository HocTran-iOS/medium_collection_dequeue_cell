//
//  UICollectionView.swift
//  Example
//
//  Created by HocTran on 11/10/19.
//  Copyright © 2019 Hoc Tran. All rights reserved.
//

import UIKit

// MARK: - dequeue

extension UICollectionView {
    func dequeueCell<T: Reusable & UICollectionViewCell>(_ type: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: T.reuseId, for: indexPath) as! T
    }

    func dequeueView<T: Reusable & UICollectionReusableView>(_ type: T.Type, ofKind kind: String, for indexPath: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: T.reuseId, for: indexPath) as! T
    }
    
    func dequeueHeaderView<T: Reusable & UICollectionReusableView>(_ type: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.reuseId, for: indexPath) as! T
    }
    
    func dequeueFooterView<T: Reusable & UICollectionReusableView>(_ type: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.reuseId, for: indexPath) as! T
    }
}

// MARK: - register

extension UICollectionView {
    func registerCell<T: Reusable & UICollectionViewCell>(_ type: T.Type) {
        register(T.self, forCellWithReuseIdentifier: T.reuseId)
    }
    
    /// Register nib to collection view as reuseable header or footer
    ///
    /// - Parameters:
    ///   - type: type of nib will be registered for reuse
    ///   - kind: kind of section view. only accept **UICollectionView.elementKindSectionHeader** or **UICollectionView.elementKindSectionFooter**
    func registerView<T: Reusable & UICollectionReusableView>(_ type: T.Type, ofKind kind: String) {
        guard kind == UICollectionView.elementKindSectionHeader || kind == UICollectionView.elementKindSectionFooter else {
            fatalError("Oop!. Can not register view to collectionview. Only accep kind as UICollectionView.elementKindSectionHeader or UICollectionView.elementKindSectionFooter")
        }
        register(T.self, forSupplementaryViewOfKind: kind, withReuseIdentifier: T.reuseId)
    }

    func registerHeaderView<T: Reusable & UICollectionReusableView>(_ type: T.Type) {
        register(T.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.reuseId)
    }

    func registerFooterView<T: Reusable & UICollectionReusableView>(_ type: T.Type) {
        register(T.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.reuseId)
    }
}

// MARK: - register nib

extension UICollectionView {
    func registerCell<T: NibInstancable & Reusable & UICollectionViewCell>(_ type: T.Type) {
        register(T.nib(), forCellWithReuseIdentifier: T.reuseId)
    }
    
    /// Register nib to collection view as reuseable header or footer
    ///
    /// - Parameters:
    ///   - type: type of nib will be registered for reuse
    ///   - kind: kind of section view. only accept **UICollectionView.elementKindSectionHeader** or **UICollectionView.elementKindSectionFooter**
    func registerView<T: NibInstancable & Reusable & UICollectionReusableView>(_ type: T.Type, ofKind kind: String) {
        guard kind == UICollectionView.elementKindSectionHeader || kind == UICollectionView.elementKindSectionFooter else {
            fatalError("Oop!. Can not register view to collectionview. Only accep kind as UICollectionView.elementKindSectionHeader or UICollectionView.elementKindSectionFooter")
        }
        register(T.nib(), forSupplementaryViewOfKind: kind, withReuseIdentifier: T.reuseId)
    }

    func registerHeaderView<T: NibInstancable & Reusable & UICollectionReusableView>(_ type: T.Type) {
        register(T.nib(), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.reuseId)
    }

    func registerFooterView<T: NibInstancable & Reusable & UICollectionReusableView>(_ type: T.Type) {
        register(T.nib(), forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.reuseId)
    }
}
