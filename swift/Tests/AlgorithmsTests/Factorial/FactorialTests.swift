//
//  FactorialTests.swift
//  AlgorithmsTests
//
//  Created by Brian Gerstle on 11/8/19.
//

@testable import Algorithms
import XCTest

class FactorialTests: XCTestCase {
    func testZero() {
        XCTAssertEqual(try! 0.factorial(), 0)
    }

    func testOne() {
        XCTAssertEqual(try! 1.factorial(), 1)
    }

    func testTwo() {
        XCTAssertEqual(try! 2.factorial(), 2)
    }

    func testThree() {
        XCTAssertEqual(try! 3.factorial(), 6)
    }

    func testTen() {
        XCTAssertEqual(try! 10.factorial(), 3628800)
    }

    func testThrowsOnOverflow() {
        XCTAssertThrowsError(try (100 as UInt8).factorial())
    }
}
