//
//  DemoUITestUITests.swift
//  DemoUITestUITests
//
//  Created by Ravi on 02/06/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import XCTest

class DemoUITestUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }

    func testViewLoad() throws {
        self.measure(metrics: [XCTOSSignpostMetric(subsystem: "com.demo.uitest", category: "uitest.category", name: "load")]) {
            let app = XCUIApplication()
            app.launch()
            XCTFail("failed")
        }
    }
    
    func testViewLayoutSubviews() throws {
        self.measure(metrics: [XCTOSSignpostMetric(subsystem: "com.demo.uitest", category: "uitest.category", name: "layout_subviews")]) {
            let app = XCUIApplication()
            app.launch()
        }
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
//            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
