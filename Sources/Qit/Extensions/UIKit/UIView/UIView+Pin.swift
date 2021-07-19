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
    public func pinToSuperviewEdges(
        margins: UIEdgeInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)) {
        guard let superview = superview else { return }
        let leftConstraint = leftAnchor.constraint(equalTo: superview.leftAnchor, constant: margins.left)
        let rightConstraint = rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -margins.right)
        let topConstraint = topAnchor.constraint(equalTo: superview.topAnchor, constant: margins.top)
        let bottomConstraint = bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -margins.bottom)
        NSLayoutConstraint.activate([leftConstraint, rightConstraint, topConstraint, bottomConstraint])
    }

    /// Pin to the right side of the superview
    /// - Parameter margin: Margin right. Default is zero
    /// - Note: No need to use a negative margin value
    public func pinRightToSuperview(margin: CGFloat = 0.0) {
        guard let superview = superview else { return }
        pinRightToView(superview, margin: margin)
    }

    /// Pin to the left side of the superview
    /// - Parameter margin: Margin left. Default is zero
    public func pinLeftToSuperview(margin: CGFloat = 0.0) {
        guard let superview = superview else { return }
        pinLeftToView(superview, margin: margin)
    }

    /// Pin to the top of the superview
    /// - Parameter margin: Margin top. Default is zero
    public func pinTopToSuperview(margin: CGFloat = 0.0) {
        guard let superview = superview else { return }
        pinTopToView(superview, margin: margin)
    }

    /// Pin to the bottom of the superview
    /// - Parameter margin: Margin bottom. Default is zero
    /// - Note: No need to use a negative margin value
    public func pinBottomToSuperview(margin: CGFloat = 0.0) {
        guard let superview = superview else { return }
        pinBottomToView(superview, margin: margin)
    }

    /// Pin to the right side of the view
    /// - Parameter margin: Margin left. Default is zero
    public func pinRightToView(_ view, margin: CGFloat = 0.0) {
        rightAnchor.constraint(equalTo: view.rightAnchor, constant: -margin).isActive = true
    }

    /// Pin to the left side of the view
    /// - Parameter margin: Margin left. Default is zero
    public func pinLeftToView(_ view, margin: CGFloat = 0.0) {
        leftAnchor.constraint(equalTo: view.leftAnchor, constant: margin).isActive = true
    }

    /// Pin to the top side of the view
    /// - Parameter margin: Margin left. Default is zero
    public func pinTopToView(_ view, margin: CGFloat = 0.0) {
        topAnchor.constraint(equalTo: view.topAnchor, constant: margin).isActive = true
    }

    /// Pin to the bottom side of the view
    /// - Parameter margin: Margin left. Default is zero
    public func pinBottomToView(_ view, margin: CGFloat = 0.0) {
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -margin).isActive = true
    }
}
