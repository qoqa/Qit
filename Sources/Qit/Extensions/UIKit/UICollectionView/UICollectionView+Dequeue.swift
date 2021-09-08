//
//  UICollectionView+Dequeue.swift
//  Qit
//
//  Created by Alexandre Nussbaumer on 08.09.21.
//

import UIKit

extension UICollectionView {

    // MARK: - Cell
    public func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as? T else {
            fatalError("Impossible to dequeue reusable cell type \(String(describing: T.self))")
        }
        return cell
    }

    // MARK: - SupplementaryView
    public func dequeueReusableSupplementaryView<T: UICollectionReusableView>(for indexPath: IndexPath,
                                                                       ofKind kind: String = UICollectionView.elementKindSectionHeader) -> T {
        guard let cell = dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: String(describing: T.self), for: indexPath) as? T else {
            fatalError("Impossible to dequeue reusable cell type \(String(describing: T.self))")
        }
        return cell
    }
}
