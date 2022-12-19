//
//  View+ConditionalModifier.swift
//  Qit
//
//  Created by Alexandre Nussbaumer on 09.06.22.
//  Copyright © 2022 QoQa Services SA. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
extension View {

    public typealias ContentTransform<Content: View> = (Self) -> Content

    /// Conditional `SwiftUI` view modifier
    /// - Parameters:
    ///   - condition: View modifier condition
    ///   - then: Content transform for the `true` condition
    ///   - else: Content transform for the `false` condtion
    /// - Returns: Content
    @ViewBuilder public func `if`<TrueContent: View, FalseContent: View>(
        _ condition: Bool,
        then: ContentTransform<TrueContent>,
        else: ContentTransform<FalseContent>) -> some View {
            if condition {
                then(self)
            } else {
                `else`(self)
            }
        }
}
