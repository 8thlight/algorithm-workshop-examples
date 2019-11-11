from algorithms.factorial import factorial, iter_factorial
import pytest
from typing import Tuple, List

EXPECTED_OUTPUTS: List[Tuple[int, int]] = [
        (0, 0), 
        (1, 1), 
        (2, 2), 
        (3, 6),
        (10, 3628800),
        (100, 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000)
    ]

@pytest.mark.parametrize("expected_outputs", EXPECTED_OUTPUTS)
def test_examples(expected_outputs):
    x, expected = expected_outputs
    assert factorial(x) == expected

@pytest.mark.parametrize("expected_outputs", EXPECTED_OUTPUTS)
def test_examples_iterative(expected_outputs):
    x, expected = expected_outputs
    assert iter_factorial(x) == expected