//
//  ContainerCollectionViewCell.swift
//  Qit
//
//  Created by Alexandre on 20.04.20.
//  Copyright © 2020 QoQa Services SA. All rights reserved.
//
import UIKit

open class ContainerCollectionViewCell<V: UIView>: UICollectionViewCell {

    public lazy var view: V = {
        return V()
    }()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        view.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(view)
        view.pinToSuperviewEdges()
        viewAttached()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /**
     Called when the custom view is attached and pinned
     
     */
    open func viewAttached() {}
}
