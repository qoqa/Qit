//
//  UIStackView+Subviews.swift
//  Qit
//
//  Created by Alexandre Nussbaumer on 06.09.21.
//

import UIKit

extension UIStackView {

    /// Remove all the arranged subviews on a `UIStackView`
    public func removeAllArrangedSubviews() {
        self.arrangedSubviews.forEach {
            self.removeArrangedSubview($0)
            NSLayoutConstraint.deactivate($0.constraints)
            $0.removeFromSuperview()
        }
    }
}
