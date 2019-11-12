from functools import reduce
from operator import mul

def factorial(x: int) -> int:
    if x < 3:
        return x
    return x * factorial(x - 1)

def iter_factorial(x: int) -> int:
    if x < 3:
        return x
    xs = range(2, x)
    return reduce(mul, xs, x)