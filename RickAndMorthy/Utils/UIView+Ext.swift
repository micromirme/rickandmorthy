//
//  UIView+Ext.swift
//  RickAndMorthy
//
//  Created by Виталий Захаров on 03.01.2023.
//

import UIKit

extension UIView {
    public func addSubviews(with views: [UIView]){
        views.forEach {
            addSubview($0)
        }
    }
}
