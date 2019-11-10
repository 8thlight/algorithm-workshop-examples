//
//  MergeSort.swift
//  Algorithms
//
//  Created by Brian Gerstle on 11/10/19.
//

import Foundation

extension Collection where Element: Comparable {
    func mergeSort() -> Array<Element> {
        guard self.count > 1 else {
            return Array(self)
        }
        let (firstHalf, secondHalf) = halves()
        return recursiveSortedMerge(firstHalf.mergeSort(), secondHalf.mergeSort())
    }
}

extension Collection {
    func halves() -> (SubSequence, SubSequence) {
        let middle = index(startIndex, offsetBy: count / 2),
            firstHalf = self[startIndex ..< middle],
            secondHalf = self[middle ..< endIndex]
        return (firstHalf, secondHalf)
    }
}

func recursiveSortedMerge<C1, C2>(_ lhs: C1, _ rhs: C2) -> Array<C1.Element>
where C1: Collection, C2: Collection, C1.Element: Comparable, C1.Element == C2.Element {
    guard let left = lhs.first else {
        guard let right = rhs.first else {
            return []
        }
        return [right] + recursiveSortedMerge(lhs, rhs.dropFirst())
    }
    guard let right = rhs.first else {
        return [left] + recursiveSortedMerge(lhs.dropFirst(), rhs)
    }
    if left < right {
        return [left] + recursiveSortedMerge(lhs.dropFirst(), rhs)
    } else {
        return [right] + recursiveSortedMerge(lhs, rhs.dropFirst())
    }
}

func sortedMerge<S1, S2>(_ lhs: S1, _ rhs: S2) -> Array<S1.Element>
where S1: Sequence, S2: Sequence, S1.Element: Comparable, S1.Element == S2.Element {
    return Array(SortedMerge(left: lhs, right: rhs))
}

struct SortedMerge<S1, S2> : Sequence, IteratorProtocol
where S1: Sequence, S2: Sequence, S1.Element: Comparable, S1.Element == S2.Element {
    typealias Element = S1.Element

    var left: S1.Iterator
    var right: S2.Iterator
    var nextLeft: S1.Element?
    var nextRight: S2.Element?

    init(left: S1, right: S2) {
        self.left = left.makeIterator()
        self.right = right.makeIterator()
        let _ = popLeft()
        let _ = popRight()
    }

    mutating func popLeft() -> S1.Element? {
        defer { nextLeft = left.next() }
        return nextLeft
    }

    mutating func popRight() -> S2.Element? {
        defer { nextRight = right.next() }
        return nextRight
    }

    mutating func next() -> Element? {
        guard let l = nextLeft else {
            return popRight()
        }
        guard let r = nextRight else {
            return popLeft()
        }
        return l <= r ? popLeft() : popRight()
    }
}
