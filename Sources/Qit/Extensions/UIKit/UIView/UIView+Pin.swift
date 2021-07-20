//
//  UIView+Pin.swift
//  Qit
//
//  Created by Alexandre on 28.02.20.
//  Copyright © 2020 QoQa Services SA. All rights reserved.
//
import UIKit

extension UIView {

    /// Pin the view to all the edges of the superview
    /// - Parameter margins: Margins. Default is zero
    /// - Note: No need to use a negative margin value
    @discardableResult public func pinToSuperviewEdges(
        margins: UIEdgeInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)) -> [NSLayoutConstraint] {
        guard let superview = superview else { return [NSLayoutConstraint]() }
        let topConstraint = topAnchor.constraint(equalTo: superview.topAnchor, constant: margins.top)
        let leftConstraint = leftAnchor.constraint(equalTo: superview.leftAnchor, constant: margins.left)
        let bottomConstraint = bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -margins.bottom)
        let rightConstraint = rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -margins.right)
        NSLayoutConstraint.activate([leftConstraint, rightConstraint, topConstraint, bottomConstraint])
        return [topConstraint, leftConstraint, bottomConstraint, rightConstraint]
    }

    /// Pin to the right side of the superview
    /// - Parameter margin: Margin right. Default is zero
    /// - Note: No need to use a negative margin value
    /// - Returns: The created constraint
    @discardableResult public func pinRightToSuperview(margin: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = superview else { return nil }
        return pinRightToView(superview, margin: margin)
    }

    /// Pin to the left side of the superview
    /// - Parameter margin: Margin left. Default is zero
    /// - Returns: The created constraint
    @discardableResult public func pinLeftToSuperview(margin: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = superview else { return nil }
        return pinLeftToView(superview, margin: margin)
    }

    /// Pin to the top of the superview
    /// - Parameter margin: Margin top. Default is zero
    /// - Returns: The created constraint
    @discardableResult public func pinTopToSuperview(margin: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = superview else { return nil }
        return pinTopToView(superview, margin: margin)
    }

    /// Pin to the bottom of the superview
    /// - Parameter margin: Margin bottom. Default is zero
    /// - Note: No need to use a negative margin value
    /// - Returns: The created constraint
    @discardableResult public func pinBottomToSuperview(margin: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = superview else { return nil }
        return pinBottomToView(superview, margin: margin)
    }

    /// Pin to the right side of the view
    /// - Parameter margin: Margin left. Default is zero
    /// - Parameter view: UIView that will be constrained with
    /// - Returns: The created constraint
    @discardableResult public func pinRightToView(_ view: UIView, margin: CGFloat = 0.0) -> NSLayoutConstraint {
        let constraint = rightAnchor.constraint(equalTo: view.rightAnchor, constant: -margin)
        constraint.isActive = true
        return constraint
    }

    /// Pin to the left side of the view
    /// - Parameter margin: Margin left. Default is zero
    /// - Parameter view: UIView that will be constrained with
    /// - Returns: The created constraint
    @discardableResult public func pinLeftToView(_ view: UIView, margin: CGFloat = 0.0) -> NSLayoutConstraint {
        let constraint = leftAnchor.constraint(equalTo: view.leftAnchor, constant: margin)
        constraint.isActive = true
        return constraint
    }

    /// Pin to the top side of the view
    /// - Parameter margin: Margin left. Default is zero
    /// - Parameter view: UIView that will be constrained with
    /// - Returns: The created constraint
    @discardableResult public func pinTopToView(_ view: UIView, margin: CGFloat = 0.0) -> NSLayoutConstraint {
        let constraint = topAnchor.constraint(equalTo: view.topAnchor, constant: margin)
        constraint.isActive = true
        return constraint
    }

    /// Pin to the bottom side of the view
    /// - Parameter margin: Margin left. Default is zero
    /// - Parameter view: UIView that will be constrained with
    /// - Returns: The created constraint
    @discardableResult public func pinBottomToView(_ view: UIView, margin: CGFloat = 0.0) -> NSLayoutConstraint {
        let constraint = bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -margin)
        constraint.isActive = true
        return constraint
    }
}
