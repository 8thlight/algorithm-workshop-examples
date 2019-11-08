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
extension Int64: OverflowMultipliable {}

extension UInt: OverflowMultipliable {}
extension UInt8: OverflowMultipliable {}
extension UInt16: OverflowMultipliable {}
extension UInt64: OverflowMultipliable {}

struct OverflowError<T: OverflowMultipliable> : Error {
    let lhs: T
    let rhs: T
    let result: T
}

extension Numeric where Self: Comparable, Self: OverflowMultipliable {
    func factorial() throws -> Self {
        guard self > 1 else {
            return self
        }
        let next = try (self - 1).factorial(),
            result = self &* next
        guard result >= self else {
            throw OverflowError(lhs: self, rhs: next, result: result)
        }
        return result
    }
}
