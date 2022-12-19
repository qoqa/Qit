//
//  ViewConditionalModifierTests.swift
//  
//
//  Created by Sara Alemanno on 16.12.22.
//

import XCTest
import SwiftUI

final class ViewConditionalModifierTests: XCTestCase {

    // MARK: - Getters
    func conditionalFrameView(isEmpty: Bool) -> some View {
        Rectangle()
            .if(isEmpty,
                then: frame(size: .zero),
                else: frame(width: .infinity))
    }

    // MARK: - Tests
    func test_viewConditionalModifier_then() {
        let view = conditionalFrameView(isEmpty: true)
        XCTAssertEqual(view.frame, .zero)
    }

    func test_viewConditionalModifier_else() {
        let view = conditionalFrameView(isEmpty: false)
        XCTAssertEqual(view.frame.width, .infinity)
    }
}
