from functools import reduce

def factorial(x: int) -> int:
    if x < 3:
        return x
    return x * factorial(x - 1)


def iter_factorial(x: int) -> int:
    if x < 3:
        return x
    xs = range(x - 1, 1, -1)
    return reduce(lambda x1, x2: x1 * x2, xs, x)
    
