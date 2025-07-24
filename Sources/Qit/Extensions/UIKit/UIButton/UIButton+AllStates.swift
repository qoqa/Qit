import UIKit

extension UIButton {

    private var states: [UIControl.State] {
        return [.normal, .selected, .highlighted, .disabled]
    }

    /// Set image for all states
    /// - Parameter color: UIImage
    public func setImageForAllStates(_ image: UIImage?) {
        states.forEach {
            self.setImage(image, for: $0)
        }
    }
}
