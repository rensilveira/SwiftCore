//
//  Identifiable.swift
//  CoinConverter
//
//  Created by Renan Bezerra da Silveira on 02/11/19.
//  Copyright © 2019 Renan Bezerra da Silveira. All rights reserved.
//

import UIKit

// MARK: - Identifiable protocol

public protocol Identifiable: class { }

/// Used to instanciate views from xibs
public protocol NibLoadableView: class { }

// MARK: - Identifiable Extension on UIViewController

public extension Identifiable where Self: UIViewController {

    /// Creates an identifier from class name
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

// MARK: - Identifiable Extension on UITableViewCell

public extension Identifiable where Self: UITableViewCell {

    /// Creates an identifier from class name
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

// MARK: - Identifiable Extension on UICollectionViewCell

public extension Identifiable where Self: UICollectionViewCell {

    /// Creates an identifier from class name
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

// MARK: - NibLoadableView Extension on UIView

public extension NibLoadableView where Self: UIView {

    /// Creates an identifier from class name
    static var nibName: String {
        return String(describing: self)
    }
}
