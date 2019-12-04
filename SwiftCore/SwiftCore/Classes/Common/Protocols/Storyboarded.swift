//
//  Storyboarded.swift
//  CoinConverter
//
//  Created by Renan Bezerra da Silveira on 02/11/19.
//  Copyright © 2019 Renan Bezerra da Silveira. All rights reserved.
//

import UIKit

public protocol Storyboarded {
    static var storyboardName: String { get }
}

extension UIStoryboard {

    /// Instantiates a view controller based on a storyboard
    public static func instanciate<T: UIViewController>() -> T where T: Identifiable & Storyboarded {
        let storyboard = UIStoryboard(name: T.storyboardName, bundle: Bundle(for: T.self))
        guard let viewController = storyboard.instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T else {
            fatalError("Could not instantiate ViewController with identifier: \(T.storyboardIdentifier)")
        }

        return viewController
    }
}
