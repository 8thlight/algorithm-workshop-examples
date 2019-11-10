//
//  HalvesTest.swift
//  AlgorithmsTests
//
//  Created by Brian Gerstle on 11/10/19.
//

@testable import Algorithms
import XCTest

class HalvesTest: XCTestCase {
    func testHalvesEmpty() {
        let (firstHalf, secondHalf) = Array<Int>().halves()
        XCTAssertEqual(firstHalf, [])
        XCTAssertEqual(secondHalf, [])
    }

    func testHalvesSingleton() {
        let (firstHalf, secondHalf) = [1].halves()
        XCTAssertEqual(firstHalf, [])
        XCTAssertEqual(secondHalf, [1])
    }

    func testHalvesEven() {
        let (firstHalf, secondHalf) = [1, 2].halves()
        XCTAssertEqual(firstHalf, [1])
        XCTAssertEqual(secondHalf, [2])
    }

    func testHalvesOdd() {
        let (firstHalf, secondHalf) = [1, 2, 3].halves()
        XCTAssertEqual(firstHalf, [1])
        XCTAssertEqual(secondHalf, [2, 3])
    }
}
