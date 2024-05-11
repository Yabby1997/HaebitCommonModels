//
//  ShutterSpeedValueTests.swift
//  HaebitCommonModelsTests
//
//  Created by Seunghun on 5/11/24.
//  Copyright © 2024 seunghun. All rights reserved.
//

import HaebitCommonModels
import XCTest

final class ShutterSpeedValueTests: XCTestCase {
    func testZeroDenominator() {
        let shutterSpeed = ShutterSpeedValue(denominator: .zero)
        XCTAssertNil(shutterSpeed)
    }
    
    func testZeroSeconds() {
        let shutterSpeed = ShutterSpeedValue(seconds: .zero)
        XCTAssertNil(shutterSpeed)
    }
    
    func test2000Denominator() {
        let shutterSpeed = ShutterSpeedValue(denominator: 2000)!
        XCTAssertEqual(shutterSpeed.denominator, 2000)
        XCTAssertEqual(shutterSpeed.description, "¹⁄ 2000s")
        XCTAssertEqual(shutterSpeed.title, "¹⁄₂₀₀₀s")
        XCTAssertEqual(shutterSpeed.value, 0.0005)
    }
    
    func test1Denominator() {
        let shutterSpeed = ShutterSpeedValue(denominator: 1)!
        XCTAssertEqual(shutterSpeed.denominator, 1)
        XCTAssertEqual(shutterSpeed.description, "1s")
        XCTAssertEqual(shutterSpeed.title, "1s")
        XCTAssertEqual(shutterSpeed.value, 1)
    }
    
    func testOneSecond() {
        let shutterSpeed = ShutterSpeedValue(seconds: 1)!
        XCTAssertEqual(shutterSpeed.denominator, 1)
        XCTAssertEqual(shutterSpeed.description, "1s")
        XCTAssertEqual(shutterSpeed.title, "1s")
        XCTAssertEqual(shutterSpeed.value, 1)
    }
    
    func testOverOneSecond() {
        let shutterSpeed = ShutterSpeedValue(seconds: 16)!
        XCTAssertEqual(shutterSpeed.denominator, 0.0625)
        XCTAssertEqual(shutterSpeed.description, "16s")
        XCTAssertEqual(shutterSpeed.title, "16s")
        XCTAssertEqual(shutterSpeed.value, 16)
    }
}
