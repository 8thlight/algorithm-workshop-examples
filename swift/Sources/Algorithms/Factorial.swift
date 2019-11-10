//
//  Factorial.swift
//  Algorithms
//
//  Created by Brian Gerstle on 11/8/19.
//

import Foundation

protocol OverflowMultipliable {
    static func &*(_ lhs: Self, _ rhs: Self) -> Self
}

extension Int: OverflowMultipliable {}
extension Int8: OverflowMultipliable {}
extension Int16: OverflowMultipliable {}
extension Int32: OverflowMultipliable {}
extension Int64: OverflowMultipliable {}

extension UInt: OverflowMultipliable {}
extension UInt8: OverflowMultipliable {}
extension UInt16: OverflowMultipliable {}
extension UInt32: OverflowMultipliable {}
extension UInt64: OverflowMultipliable {}

struct OverflowError<T: OverflowMultipliable> : Error {
    let lhs: T
    let rhs: T
    let result: T
}

typealias FactorialT = Comparable & OverflowMultipliable

extension Numeric
    where Self: FactorialT {
    func factorial() throws -> Self {
        guard self > 2 else {
            return self
        }
        let next = try (self - 1).factorial(),
            result = self &* next
        guard result > self else {
            throw OverflowError(lhs: self, rhs: next, result: result)
        }
        return result
    }
}

extension Numeric
    where Self: Comparable & OverflowMultipliable {
    func ifactorial() throws -> Self {
        guard self > 2 else {
            return self
        }
        var result = self,
            i = result - 1
        while (i > 1) {
            let newResult = result &* i
            guard newResult > result else {
                throw OverflowError(lhs: result, rhs: i, result: newResult)
            }
            result = newResult
            i -= 1
        }
        return result
    }
}
