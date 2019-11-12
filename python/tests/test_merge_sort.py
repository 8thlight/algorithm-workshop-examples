from algorithms.merge_sort import merge_sort, split, merge_sorted, rec_merge_sorted

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

param_merge_sorted_impls = pytest.mark.parametrize("f", [merge_sorted, rec_merge_sorted])

@param_merge_sorted_impls
def test_merging_empty(f):
    assert f([], []) == []

@param_merge_sorted_impls
def test_merging_second_empty(f):
    assert f([0], []) == [0]

@param_merge_sorted_impls
def test_merging_first_empty(f):
    assert f([], [0]) == [0]

@param_merge_sorted_impls
def test_merging_one_each(f):
    assert f([0], [1]) == [0, 1]

@param_merge_sorted_impls
def test_merging_one_each_reversed(f):
    assert f([1], [0]) == [0, 1]

@param_merge_sorted_impls
def test_merging_left_left_right(f):
    assert f([0, 1], [2]) == [0, 1, 2]

@param_merge_sorted_impls
def test_merging_left_right_left(f):
    assert f([0, 2], [1]) == [0, 1, 2]

@param_merge_sorted_impls
def test_merging_right_left_right(f):
    assert f([1], [0, 2]) == [0, 1, 2]

@param_merge_sorted_impls
def test_merging_right_right_left(f):
    assert f([2], [0, 1]) == [0, 1, 2]