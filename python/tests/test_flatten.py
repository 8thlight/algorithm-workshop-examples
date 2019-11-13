from algorithms.flatten import flatten

def test_empty():
    assert(flatten([])) == []

def test_flat():
    assert(flatten([0, 1, 2])) == [0, 1, 2]

def test_nested():
    assert(flatten([[0]])) == [0]

def test_nested_and_flat():
    assert(flatten([[0], 1])) == [0, 1]

def test_doubly_nested_nested_and_flat():
    assert(flatten([[0], 1, [[2]]])) == [0, 1, 2]

def test_tree_like():
    assert(flatten([0, [1, [2, 3]]])) == [0, 1, 2, 3]