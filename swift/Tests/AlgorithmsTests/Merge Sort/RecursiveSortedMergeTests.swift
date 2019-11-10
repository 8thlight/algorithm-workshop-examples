//
//  RecursiveSortedMergeTests.swift
//  AlgorithmsTests
//
//  Created by Brian Gerstle on 11/10/19.
//

import XCTest

@testable import Algorithms
import XCTest

class RecursiveSortedMergeTests: XCTestCase {
    func testTwoEmpty() {
        XCTAssertEqual(recursiveSortedMerge(Array<Int>(), []), [])
    }

    func testFirstEmpty() {
        XCTAssertEqual(recursiveSortedMerge([], [1]), [1])
    }

    func testSecondEmpty() {
        XCTAssertEqual(recursiveSortedMerge([1], []), [1])
    }

    func testFirstLessThanSecond() {
        XCTAssertEqual(recursiveSortedMerge([1], [2]), [1, 2])
    }

    func testSecondLessThanFirst() {
        XCTAssertEqual(recursiveSortedMerge([2], [1]), [1, 2])
    }

    func testFirstFirstSecond() {
        XCTAssertEqual(recursiveSortedMerge([1, 2], [3]), [1, 2, 3])
    }

    func testFirstSecondFirst() {
        XCTAssertEqual(recursiveSortedMerge([1, 3], [2]), [1, 2, 3])
    }

    func testSecondSecondFirst() {
        XCTAssertEqual(recursiveSortedMerge([3], [1, 2]), [1, 2, 3])
    }

    func testSecondFirstSecond() {
        XCTAssertEqual(recursiveSortedMerge([2], [1, 3]), [1, 2, 3])
    }
}
