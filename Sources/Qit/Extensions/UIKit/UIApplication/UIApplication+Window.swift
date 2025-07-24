import UIKit

extension UIApplication {

    /// Returns the first available window
    public var window: UIWindow? {
        return self
            .connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }
    }

    /// Returns the rootViewController or the presentedViewController if displayed
    public var rootViewController: UIViewController? {
        guard var viewController = window?.rootViewController else { return nil }

        // Get the top presentedController if exists
        while let presentedViewController = viewController.presentedViewController {
            viewController = presentedViewController
        }

        return viewController.presentedViewController ?? viewController
    }
}
