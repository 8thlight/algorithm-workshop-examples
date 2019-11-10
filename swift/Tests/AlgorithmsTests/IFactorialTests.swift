//
//  IFactorialTests.swift
//  AlgorithmsTests
//
//  Created by Brian Gerstle on 11/10/19.
//

@testable import Algorithms
import XCTest

class IFactorialTests: XCTestCase {
    func testZero() {
        XCTAssertEqual(try! 0.ifactorial(), 0)
    }

    func testOne() {
        XCTAssertEqual(try! 1.ifactorial(), 1)
    }

    func testTwo() {
        XCTAssertEqual(try! 2.ifactorial(), 2)
    }

    func testThree() {
        XCTAssertEqual(try! 3.ifactorial(), 6)
    }

    func testTen() {
        XCTAssertEqual(try! 10.ifactorial(), 3628800)
    }

    func testThrowsOnOverflow() {
        XCTAssertThrowsError(try (100 as UInt8).ifactorial())
    }
}
