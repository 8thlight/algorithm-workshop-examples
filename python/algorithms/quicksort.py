from typing import List, Tuple, TypeVar
from random import randint

T = TypeVar('T')

def quicksort(xs: List[T]) -> List[T]:
    if len(xs) < 2:
        return xs
    lt_pivot, pivot, gt_pivot = partition(xs)
    return quicksort(lt_pivot) + [pivot] + quicksort(gt_pivot)

def partition(xs: List[T], pivot_index=None) -> Tuple[List[T], T, List[T]]:
    if len(xs) == 0:
        raise ValueError("Cannot partition empty list")
    if pivot_index is None:
        pivot_index = randint(0, len(xs) - 1)
    pivot = xs[pivot_index]
    sorted = [pivot]
    lt_pivot = []
    gt_pivot = []
    for x in xs:
        if x is pivot:
            continue
        elif x < pivot:
            lt_pivot.append(x)
        else:
            gt_pivot.append(x)
    return (lt_pivot, pivot, gt_pivot)