//
//  UIButton+AllStates.swift
//  Qit
//
//  Created by Alexandre on 10.02.21.
//
import UIKit

extension UIButton {

    public func setTitleForAllStates(_ title: String?) {
        let states: [UIControl.State] = [.normal, .highlighted, .selected, .disabled]
        for state in states {
            self.setTitle(title, for: state)
        }
    }

    public func setTitleColorForAllStates(_ color: UIColor) {
        let states: [UIControl.State] = [.normal, .highlighted, .selected, .disabled]
        for state in states {
            self.setTitleColor(color, for: state)
        }
    }

    public func setImageForAllStates(_ image: UIImage) {
        let states: [UIControl.State] = [.normal, .highlighted, .selected, .disabled]
        for state in states {
            self.setImage(image, for: state)
        }
    }
}
