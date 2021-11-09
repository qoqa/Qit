//
//  NotificationCenter+Utils.swift
//  Qit
//
//  Created by Michel Pinto on 09.11.21.
//

import Foundation

extension NotificationCenter {

    /// Adds an entry to the notification center to call the provided selector with the notification.
    /// - Parameters:
    ///   - observer: An object to register as an observer.
    ///   - selector: A selector that specifies the message the receiver sends observer to alert it to the notification posting.
    ///   The method that aSelector specifies must have one and only one argument (an instance of NSNotification).
    ///   - name: The name of the notification to register for delivery to the observer. Specify a notification name to deliver only entries with this notification name.
    ///   When nil, the sender doesn’t use notification names as criteria for the delivery.
    open func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?) {
        addObserver(observer, selector: selector, name: name, object: nil)
    }

    /// Creates a notification with a given name, sender, and information and posts it to the notification center.
    /// - Parameters:
    ///   - name: The name of the notification.
    ///   - userInfo: Optional information about the the notification.
    open func post(name: NSNotification.Name, userInfo: [AnyHashable : Any]? = nil) {
        post(name: name, object: nil, userInfo: userInfo)
    }

    /// Removes matching entries from the notification center's dispatch table.
    /// - Parameters:
    ///   - observer: The observer to remove from the dispatch table. Specify an observer to remove only entries for this observer.
    ///   - name: The name of the notification to remove from the dispatch table. Specify a notification name to remove only entries with this notification name. When nil, the receiver does not use notification names as criteria for removal.
    open func removeObserver(_ observer: Any, name: NSNotification.Name?) {
        removeObserver(observer, name: name, object: nil)
    }
}
