const mergeSort = require("../src/mergeSort");

describe("testing mergeSort cases for lists of less than 2 length", () => {
  test("an input of an empty list returns an empty list", () => {
    expect(mergeSort([])).toEqual([]);
  });

  test("an input of [0] returns [0]", () => {
    list = [0];
    expect(mergeSort(list)).toEqual([0]);
  });
});

describe("testing mergeSort for lists of 2 length", () => {
  test("an input of [0, 1] returns [0, 1]", () => {
    list = [0, 1];
    expect(mergeSort(list)).toEqual([0, 1]);
  });

  test("an input of [1, 0] returns [0, 1]", () => {
    list = [1, 0];
    expect(mergeSort(list)).toEqual([0, 1]);
  });
});

describe("testing mergeSort for lists of 4 length", () => {
  test("an input of [4, 3, 2, 1] return [1, 2, 3, 4]", () => {
    list = [4, 3, 2, 1];
    expect(mergeSort(list)).toEqual([1, 2, 3, 4]);
  });
});

describe("testing mergeSort for lists with negatives", () => {
  test("an input of [4, -3, 2, 1] return [-3, 1, 2, 4]", () => {
    list = [4, -3, 2, 1];
    expect(mergeSort(list)).toEqual([-3, 1, 2, 4]);
  });
});

describe("testing mergeSort for lists of odd length", () => {
  test("an input of [0, 5, 1] returns [0, 1, 5]", () => {
    list = [0, 5, 1];
    expect(mergeSort(list)).toEqual([0, 1, 5]);
  });

  test("an input of [2, 1, 11, 4, 3] returns [1, 2, 3, 4, 11]", () => {
    list = [2, 1, 11, 4, 3];
    expect(mergeSort(list)).toEqual([1, 2, 3, 4, 11]);
  });
});
