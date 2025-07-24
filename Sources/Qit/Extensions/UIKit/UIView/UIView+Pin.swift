import UIKit

extension UIView {

    /// Pin the view to all the edges of the superview
    /// - Parameter margins: Margins. Default is zero
    /// - Note: No need to use a negative margin value
    @discardableResult public func pinToSuperviewEdges(
        margins: UIEdgeInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)) -> [NSLayoutConstraint] {
        guard let superview = superview else { return [NSLayoutConstraint]() }
        self.translatesAutoresizingMaskIntoConstraints = false
        let topConstraint = topAnchor.constraint(equalTo: superview.topAnchor, constant: margins.top)
        let leftConstraint = leftAnchor.constraint(equalTo: superview.leftAnchor, constant: margins.left)
        let bottomConstraint = bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -margins.bottom)
        let rightConstraint = rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -margins.right)
        NSLayoutConstraint.activate([leftConstraint, rightConstraint, topConstraint, bottomConstraint])
        return [topConstraint, leftConstraint, bottomConstraint, rightConstraint]
    }
}
