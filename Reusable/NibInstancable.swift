//
//  NibInstancable.swift
//  Example
//
//  Created by HocTran on 11/10/19.
//  Copyright © 2019 Hoc Tran. All rights reserved.
//

import UIKit

protocol NibInstancable {
    static var nibName: String { get }
}

extension NibInstancable {
    /**
    Create a UINib instance from nib name and bundle

    - Parameter bundle: the bundle contains nib

    - Returns: Instance of UINib
    */
    
    static func nib(inBundle bundle: Bundle? = nil) -> UINib {
        return UINib(nibName: nibName, bundle: bundle)
    }
}
