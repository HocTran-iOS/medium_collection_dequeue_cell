//
//  UITableView.swift

//    Copyright (c) 2019 Hoc Tran
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
//    associated documentation files (the "Software"), to deal in the Software without restriction,
//    including without limitation the rights to use, copy, modify, merge, publish, distribute,
//    sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all copies or
//    substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
//    NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
//    DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT
//    OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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
