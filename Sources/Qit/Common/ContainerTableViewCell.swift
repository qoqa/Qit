//
//  ContainerTableViewCell.swift
//  Qit
//
//  Created by Alexandre on 12.06.20.
//  Copyright © 2020 QoQa Services SA. All rights reserved.
//
import UIKit

open class ContainerTableViewCell<V: UIView>: UITableViewCell {

    public lazy var view: V = {
        return V()
    }()

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        view.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(view)
        view.pinToSuperviewEdges()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
