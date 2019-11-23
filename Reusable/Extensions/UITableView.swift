//
//  UITableView.swift
//  Example
//
//  Created by HocTran on 11/10/19.
//  Copyright © 2019 Hoc Tran. All rights reserved.
//

import UIKit

// MARK: - dequeue

extension UITableView {
    func dequeueCell<T: Reusable & UITableViewCell>(_ type: T.Type, at indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: T.reuseId, for: indexPath) as! T
    }

    func dequeueView<T: Reusable & UITableViewHeaderFooterView>(_ type: T.Type) -> T {
        return dequeueReusableHeaderFooterView(withIdentifier: T.reuseId) as! T
    }
}

// MARK: - register

extension UITableView {
    func registerCell<T: Reusable & UITableViewCell>(_ type: T.Type) {
        register(T.self, forCellReuseIdentifier: T.reuseId)
    }

    func registerView<T: Reusable & UITableViewHeaderFooterView>(_ type: T.Type) {
        register(T.self, forHeaderFooterViewReuseIdentifier: T.reuseId)
    }
}

// MARK: - register nib

extension UITableView {
    func registerCell<T: NibInstancable & Reusable & UITableViewCell>(_ type: T.Type) {
        register(T.nib(), forCellReuseIdentifier: T.reuseId)
    }

    func registerView<T: NibInstancable & Reusable & UITableViewHeaderFooterView>(_ type: T.Type) {
        register(T.nib(), forHeaderFooterViewReuseIdentifier: T.reuseId)
    }
}
