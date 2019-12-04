//
//  Coordinator.swift
//  CoinConverter
//
//  Created by Renan Bezerra da Silveira on 02/11/19.
//  Copyright © 2019 Renan Bezerra da Silveira. All rights reserved.
//

import UIKit

// MARK: - Coordinator protocol

public protocol Coordinator {

    var childCoordinators: [Coordinator] { get set }

    init(withConfiguration configuration: CoordinatorConfiguration)

    func start()
}

public class CoordinatorConfiguration {

    // MARK: - Properties

    public weak var window: UIWindow?
    public weak var navigationController: UINavigationController?
    public weak var initialViewController: UIViewController?

    // MARK: - Initializers

    /// Properties initializer
    /// - Parameters:
    ///   - window: UIWindow
    ///   - initialViewController: UIViewController
    ///   - navigationController: UINavigationController
    public init(window: UIWindow? = nil, initialViewController: UIViewController?, navigationController: UINavigationController?) {
        self.window = window
        self.initialViewController = initialViewController
        self.navigationController = navigationController
    }

    /// Properties initializer
    /// - Parameter window: UIWindow
    public convenience init(window: UIWindow) {
        self.init(window: window, initialViewController: nil, navigationController: nil)
    }

    /// Properties initializer
    /// - Parameter navigationController: UINavigationController
    public convenience init(navigationController: UINavigationController) {
        self.init(window: nil, initialViewController: nil, navigationController: navigationController)
    }

    /// Properties initializer
    /// - Parameter initialViewController: UIViewController
    public convenience init(initialViewController: UIViewController) {
        self.init(window: nil, initialViewController: initialViewController, navigationController: nil)
    }
}
