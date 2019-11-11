from algorithms.merge_sort import merge_sort, split, merge_sorted

import pytest
from typing import List, Tuple

def test_empty():
    assert merge_sort([]) == []


def test_singleton():
    assert merge_sort([0]) == [0]


def test_ordered():
    assert merge_sort([0, 1]) == [0, 1]


def test_reversed():
    assert merge_sort([1, 0]) == [0, 1]


def test_unordered():
    assert merge_sort([1, 0, 2]) == [0, 1, 2]


def test_unordered_longer():
    assert merge_sort([100, -1, 1, 0, 2, 0.5, 0.01]) == [-1, 0, 0.01, 0.5, 1, 2, 100]


def test_split_empty():
    assert split([]) == ([], [])


def test_split_singleton():
    assert split([0]) == ([], [0])


def test_split_even():
    assert split([0, 1]) == ([0], [1])


def test_split_odd():
    assert split([0, 1, 2]) == ([0], [1, 2])


def test_merging_empty():
    assert merge_sorted([], []) == []


def test_merging_second_empty():
    assert merge_sorted([0], []) == [0]


def test_merging_first_empty():
    assert merge_sorted([], [0]) == [0]


def test_merging_one_each():
    assert merge_sorted([0], [1]) == [0, 1]


def test_merging_one_each_reversed():
    assert merge_sorted([1], [0]) == [0, 1]


def test_merging_left_left_right():
    assert merge_sorted([0, 1], [2]) == [0, 1, 2]


def test_merging_left_right_left():
    assert merge_sorted([0, 2], [1]) == [0, 1, 2]


def test_merging_right_left_right():
    assert merge_sorted([1], [0, 2]) == [0, 1, 2]


def test_merging_right_right_left():
    assert merge_sorted([2], [0, 1]) == [0, 1, 2]