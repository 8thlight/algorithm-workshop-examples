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
    merged: List[Any] = []
    ixs = iter(xs) 
    iys = iter(ys) 
    x = next(ixs, None)
    y = next(iys, None)
    while x is not None or y is not None:
        if x is None:
            merged.append(y)
            y = next(iys, None)
        elif y is None:
            merged.append(x)
            x = next(ixs, None)
        elif x < y:
            merged.append(x)
            x = next(ixs, None)
        else:
            merged.append(y)
            y = next(iys, None)
    return merged

# Recursive implementation of merge_sorted
def rec_merge_sorted(xs, ys, x = None, y = None, merged = None) -> List[Any]:
    ixs = iter(xs)
    iys = iter(ys)

    if merged is None:
        merged = []
    if x is None:
        x = next(ixs, None)
    if y is None:
        y = next(iys, None)

    if x is None:
        if y is None:
            return merged
        else:
            merged.append(y)
            y = next(iys, None)
    elif y is None:
        merged.append(x)
        x = next(ixs, None)
    elif x < y:
        merged.append(x)
        x = next(ixs, None)
    else:
        merged.append(y)
        y = next(iys, None)

    return rec_merge_sorted(ixs, iys, x, y, merged)