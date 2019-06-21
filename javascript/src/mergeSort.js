const sort = array => {
  if (array.length < 2) {
    return array;
  }

  const [left, right] = splitList(array);

  const left_sorted = sort(left);
  const right_sorted = sort(right);

  return merge(left_sorted, right_sorted);
};

const merge = (left, right, acc = []) => {
  if (left.length === 0) {
    return acc.concat(right);
  } else if (right.length === 0) {
    return acc.concat(left);
  }

  if (left[0] > right[0]) {
    return merge(left, right.slice(1), acc.concat(right[0]));
  } else {
    return merge(left.slice(1), right, acc.concat(left[0]));
  }
};

const splitList = array => {
  const middle = halfOf(array.length);
  return [sliceLeftHalf(array, middle), sliceRightHalf(array, middle)];
};

const sliceLeftHalf = (array, middle) => array.slice(0, middle);

const sliceRightHalf = (array, middle) => array.slice(middle);

const halfOf = int => Math.floor(int / 2);

module.exports = sort;
