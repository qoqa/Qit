//
//  UIView+Pin.swift
//  Qit
//
//  Created by Alexandre on 28.02.20.
//  Copyright © 2020 QoQa Services SA. All rights reserved.
//
import UIKit

extension UIView {

    /**
     Pin the view to all the edges of the superview

    */
    public func pinToSuperviewEdges() {
        guard let superview = superview else { return }
        let leftConstraint = leftAnchor.constraint(equalTo: superview.leftAnchor)
        let rightConstraint = rightAnchor.constraint(equalTo: superview.rightAnchor)
        let topConstraint = topAnchor.constraint(equalTo: superview.topAnchor)
        let bottomConstraint = bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        NSLayoutConstraint.activate([leftConstraint, rightConstraint, topConstraint, bottomConstraint])
    }
    
    /**
     Pin to the right side of the superview
     
     - Parameters:
        - margin: margin right (you don't have to use negative margins(see below))
    */
    public func pinRightToSuperview(margin: CGFloat = 0.0) {
        guard let superview = superview else { return }
        rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -margin).isActive = true
    }

    /**
     Pin to the left side of the superview

     - Parameters:
        - margin: margin left
    */
    public func pinLeftToSuperview(margin: CGFloat = 0.0) {
        guard let superview = superview else { return }
        leftAnchor.constraint(equalTo: superview.leftAnchor, constant: margin).isActive = true
    }

    /**
     Pin to the top of the superview

     - Parameters:
        - margin: margin top
    */
    public func pinTopToSuperview(margin: CGFloat = 0.0) {
        guard let superview = superview else { return }
        topAnchor.constraint(equalTo: superview.topAnchor, constant: margin).isActive = true
    }
    
    /**
     Pin to the bottom of the superview
     
     - Parameters:
        - margin(optional): margin bottom (you don't have to use negative margins(see below))
     */
    public func pinBottomToSuperview(margin: CGFloat = 0.0) {
        guard let superview = superview else { return }
        bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -margin).isActive = true
    }
}
