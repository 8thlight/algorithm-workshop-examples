from typing import Tuple, List, TypeVar, Any

from math import floor

E = TypeVar('E')

def merge_sort(xs: List[E]):
    if len(xs) < 2:
        return xs
    left, right = split(xs)
    s_left = merge_sort(left)
    s_right = merge_sort(right)
    return merge_sorted(s_left, s_right)

def split(xs: List[E]) -> Tuple[List[E], List[E]]:
    middle = floor(len(xs) / 2)
    return (xs[:middle], xs[middle:])

def merge_sorted(xs: List[Any], ys: List[Any]) -> List[Any]:
    merged = []
    ixs = 0
    len_xs = len(xs)
    iys = 0
    len_ys = len(ys)
    while ixs < len_xs or iys < len_ys:
        x = xs[ixs] if ixs < len_xs else None
        y = ys[iys] if iys < len_ys else None
        if x is not None and y is not None:
            if x < y:
                merged.append(x)
                ixs += 1
            else:
                merged.append(y)
                iys += 1
        elif x is None:
            merged.append(y)
            iys += 1
        else:
            merged.append(x)
            ixs += 1
    return merged