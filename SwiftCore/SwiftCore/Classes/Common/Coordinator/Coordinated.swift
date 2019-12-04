//
//  Coordinated.swift
//  CoinConverter
//
//  Created by Renan Bezerra da Silveira on 02/11/19.
//  Copyright © 2019 Renan Bezerra da Silveira. All rights reserved.
//

import Foundation

public protocol Coordinated {
    associatedtype CoordinatedType
    static func instanciate() -> CoordinatedType
}
