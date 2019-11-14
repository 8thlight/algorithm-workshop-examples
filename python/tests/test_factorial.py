import pytest

from algorithms.factorial import factorial

@pytest.mark.parametrize("x", [0, 1, 2])
def test_identical_factorials(x):
    assert factorial(x) == x

def test_three():
    assert factorial(3) == 3 * 2

def test_four():
    assert factorial(4) == 4 * 3 * 2

def test_five():
    assert factorial(5) == 5 * 4 * 3 * 2

def test_one_hundred():
    assert factorial(100) == 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000