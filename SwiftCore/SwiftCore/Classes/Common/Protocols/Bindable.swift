//
//  Bindable.swift
//  CoinConverter
//
//  Created by Renan Bezerra da Silveira on 02/11/19.
//  Copyright © 2019 Renan Bezerra da Silveira. All rights reserved.
//

import Foundation

public class Bindable<T> {

    // MARK: - Typealias

    typealias BindType = ((T) -> Void)

    // MARK: - Properties

    private var binds: [BindType] = []

    /// Dynamic raw value
    public var value: T {
        didSet {
            execBinds()
        }
    }

    // MARK: - Initializer

    /// Initializer
    /// - Parameter val: initial dynamic value
    public init(_ val: T) {
        value = val
    }

    // MARK: - Public Methods

    /// Binding value for changes
    /// - Parameters:
    ///   - skip: boolean to decide if it should ignore ending callback from init
    ///   - bind: callback to notify changed value
    func bind(skip: Bool = false, _ bind: @escaping BindType) {
        binds.append(bind)
        if skip { return }
        bind(value)
    }

    // MARK: - Private Methods

    /// Execute bindings
    private func execBinds() {
        binds.forEach { [unowned self] bind in
            bind(self.value)
        }
    }
}
