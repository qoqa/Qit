//
//  UIApplication+Window.swift
//  QoQa
//
//  Created by Sara Alemanno on 09.01.23.
//  Copyright © 2021 QoQa Services SA. All rights reserved.
//

import UIKit

@available(iOS 13, *)
extension UIApplication {

    /// Returns the first available window
    var window: UIWindow? {
        return self
            .connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }
    }

    /// Returns the rootViewController or the presentedViewController if displayed
    var rootViewController: UIViewController? {
        guard var viewController = window?.rootViewController else { return nil }

        // Get the top presentedController if exists
        while let presentedViewController = viewController.presentedViewController {
            viewController = presentedViewController
        }

        return viewController.presentedViewController ?? viewController
    }
}
