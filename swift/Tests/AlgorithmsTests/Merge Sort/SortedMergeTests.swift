//
//  SortedMergeTests.swift
//  AlgorithmsTests
//
//  Created by Brian Gerstle on 11/10/19.
//

@testable import Algorithms
import XCTest

class SortedMergeTests: XCTestCase {
    func testTwoEmpty() {
        XCTAssertEqual(sortedMerge(Array<Int>(), []), [])
    }

    func testFirstEmpty() {
        XCTAssertEqual(sortedMerge([], [1]), [1])
    }

    func testSecondEmpty() {
        XCTAssertEqual(sortedMerge([1], []), [1])
    }

    func testFirstLessThanSecond() {
        XCTAssertEqual(sortedMerge([1], [2]), [1, 2])
    }

    func testSecondLessThanFirst() {
        XCTAssertEqual(sortedMerge([2], [1]), [1, 2])
    }

    func testFirstFirstSecond() {
        XCTAssertEqual(sortedMerge([1, 2], [3]), [1, 2, 3])
    }

    func testFirstSecondFirst() {
        XCTAssertEqual(sortedMerge([1, 3], [2]), [1, 2, 3])
    }

    func testSecondSecondFirst() {
        XCTAssertEqual(sortedMerge([3], [1, 2]), [1, 2, 3])
    }

    func testSecondFirstSecond() {
        XCTAssertEqual(sortedMerge([2], [1, 3]), [1, 2, 3])
    }
}
