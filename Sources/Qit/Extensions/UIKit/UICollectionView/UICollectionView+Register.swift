//
//  UICollectionView+Register.swift
//  Qit
//
//  Created by Alexandre Nussbaumer on 08.09.21.
//

import UIKit

// MARK: - Programmatically
extension UICollectionView {

    // MARK: - Cell
    func register<T: UICollectionViewCell>(cellType: T.Type, bundle: Bundle? = nil) {
        register(T.self, forCellWithReuseIdentifier: String(describing: cellType))
    }

    func register<T: UICollectionViewCell>(cellTypes: [T.Type], bundle: Bundle? = nil) {
        cellTypes.forEach { register(cellType: $0, bundle: bundle) }
    }

    // MARK: - SupplementaryView
    func register<T: UICollectionReusableView>(reusableViewType: T.Type,
                                               ofKind kind: String = UICollectionView.elementKindSectionHeader,
                                               bundle: Bundle? = nil) {
        register(T.self, forSupplementaryViewOfKind: kind, withReuseIdentifier: String(describing: reusableViewType))
    }
}

// MARK: - Nib
extension UICollectionView {

    // MARK: - Cell
    func registerNib<T: UICollectionViewCell>(cellType: T.Type, bundle: Bundle? = nil) {
        let className = String(describing: cellType)
        let nib = UINib(nibName: className, bundle: bundle)
        register(nib, forCellWithReuseIdentifier: className)
    }

    func registerNib<T: UICollectionViewCell>(cellTypes: [T.Type], bundle: Bundle? = nil) {
        cellTypes.forEach { registerNib(cellType: $0, bundle: bundle) }
    }

    func registerNib<T: UICollectionReusableView>(reusableViewType: T.Type,
                                                  ofKind kind: String = UICollectionView.elementKindSectionHeader,
                                                  bundle: Bundle? = nil) {
        let className = String(describing: reusableViewType)

        let nib = UINib(nibName: className, bundle: bundle)
        register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }

    // MARK: - SupplementaryView
    func registerNib<T: UICollectionReusableView>(reusableViewTypes: [T.Type],
                                                  ofKind kind: String = UICollectionView.elementKindSectionHeader,
                                                  bundle: Bundle? = nil) {
        reusableViewTypes.forEach {
            registerNib(reusableViewType: $0, ofKind: kind, bundle: bundle)
        }
    }
}
