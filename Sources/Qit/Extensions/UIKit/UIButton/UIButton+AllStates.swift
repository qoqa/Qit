//
//  UIButton+AllStates.swift
//  Qit
//
//  Created by Alexandre on 10.02.21.
//
import UIKit

extension UIButton {

    private var states: [UIControl.State] {
        return [.normal, .selected, .highlighted, .disabled]
    }

    /// Set title for all states
    /// - Parameter title: Optional String
    public func setTitleForAllStates(_ title: String?) {
        states.forEach {
            self.setTitle(title, for: $0)
        }
    }

    /// Set title color for all states
    /// - Parameter color: UIColor
    public func setTitleColorForAllStates(_ color: UIColor) {
        states.forEach {
            self.setTitleColor(color, for: $0)
        }
    }

    /// Set image for all states
    /// - Parameter color: UIImage
    public func setImageForAllStates(_ image: UIImage) {
        states.forEach {
            self.setImage(image, for: $0)
        }
    }
}
