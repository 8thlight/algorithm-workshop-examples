import pytest

from algorithms.quicksort import quicksort, partition

def test_empty():
    assert quicksort([]) == []


def test_singleton():
    assert quicksort([0]) == [0]


def test_ordered():
    assert quicksort([0, 1]) == [0, 1]


def test_reversed():
    assert quicksort([1, 0]) == [0, 1]


def test_unordered():
    assert quicksort([1, 0, 2]) == [0, 1, 2]


def test_unordered_longer():
    assert quicksort([100, -1, 1, 0, 2, 0.5, 0.01]) == [-1, 0, 0.01, 0.5, 1, 2, 100]


def test_partition_empty():
    with pytest.raises(ValueError):
        partition([])


def test_partition_singleton():
    assert partition([0]) == ([], 0, [])


def test_partition_two_pivot_second():
    assert partition([0, 1], 1) == ([0], 1, [])


def test_partition_two_pivot_first():
    assert partition([0, 1], 0) == ([], 0, [1])


def test_partition_three_pivot_second():
    assert partition([0, 1, 2], 1) == ([0], 1, [2])


def test_partition_three_pivot_second_unordered():
    assert partition([2, 1, 0], 1) == ([0], 1, [2])