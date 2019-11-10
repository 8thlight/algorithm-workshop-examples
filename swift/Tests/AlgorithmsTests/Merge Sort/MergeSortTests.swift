//
//  MergeSortTests.swift
//  AlgorithmsTests
//
//  Created by Brian Gerstle on 11/10/19.
//

@testable import Algorithms
import XCTest

class MergeSortTests: XCTestCase {
    func testEmpty() {
        // need to provide a type that's comparable
        let empty = Array<Int>()
        XCTAssertEqual(empty.mergeSort(), empty)
    }

    func testSingleton() {
        let singleton = [1]
        XCTAssertEqual(singleton.mergeSort(), singleton)
    }

    func testEqualElements() {
        XCTAssertEqual([1, 1].mergeSort(), [1, 1])
    }

    func testPresortedUnequalElements() {
        XCTAssertEqual([1, 2].mergeSort(), [1, 2])
    }

    func testUnsortedUnequalElements() {
        XCTAssertEqual([2, 1].mergeSort(), [1, 2])
    }

    func testReverseOrder() {
        XCTAssertEqual([3, 2, 1].mergeSort(), [1, 2, 3])
    }

    func testAlreadySorted() {
        XCTAssertEqual([1, 2, 3].mergeSort(), [1, 2, 3])
    }

    func testArbitraryOrder() {
        XCTAssertEqual([4, 3, 2, 1, 5].mergeSort(), [1, 2, 3, 4, 5])
    }

    func testStrings() {
        XCTAssertEqual(["a", "c", "d", "z", "f"].mergeSort(), ["a", "c", "d", "f", "z"])
    }
}
