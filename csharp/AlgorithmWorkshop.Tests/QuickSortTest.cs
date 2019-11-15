using System;
using System.Collections.Generic;
using Xunit;

namespace AlgorithmWorkshop.Tests
{
    public class QuickSortTest
    {
        [Fact]
        public void Empty()
        {
            var listToSort = new List<double>();
            var expectedResult = new List<double>();
            var actualResult = QuickSort.Sort(listToSort);

            Assert.Equal(expectedResult, actualResult);
        }

        [Fact]
        public void Singleton()
        {
            var listToSort = new List<double> {0};
            var expectedResult = new List<double> {0};
            var actualResult = QuickSort.Sort(listToSort);

            Assert.Equal(expectedResult, actualResult);
        }

        [Fact]
        public void Ordered()
        {
            var listToSort = new List<double> {0, 1};
            var expectedResult = new List<double> {0, 1};
            var actualResult = QuickSort.Sort(listToSort);

            Assert.Equal(expectedResult, actualResult);
        }

        [Fact]
        public void Reversed()
        {
            var listToSort = new List<double> {1, 0};
            var expectedResult = new List<double> {0, 1};
            var actualResult = QuickSort.Sort(listToSort);

            Assert.Equal(expectedResult, actualResult);
        }

        [Fact]
        public void Unordered()
        {
            var listToSort = new List<double> {1, 0, 2};
            var expectedResult = new List<double> {0, 1, 2};
            var actualResult = QuickSort.Sort(listToSort);

            Assert.Equal(expectedResult, actualResult);
        }

        [Fact]
        public void UnorderedLonger()
        {
            var listToSort = new List<double> {100, -1, 1, 0, 2, 0.5, 0.01};
            var expectedResult = new List<double> {-1, 0, 0.01, 0.5, 1, 2, 100};
            var actualResult = QuickSort.Sort(listToSort);

            Assert.Equal(expectedResult, actualResult);
        }

        [Fact]
        public void PartitionEmpty()
        {
            var listToSort = new List<double>();

            Assert.Throws<Exception>(() => QuickSort.Partition(listToSort));
        }

        [Fact]
        public void PartitionSingleton()
        {
            var listToSort = new List<double> {0};
            var pivotIndex = 0;
            var firstList = new List<double>();
            var pivotList = new List<double> {0};
            var secondList = new List<double>();
            var expectedResult = new List<List<double>> {firstList, pivotList, secondList};
            var actualResult = QuickSort.Partition(listToSort, pivotIndex);

            Assert.Equal(expectedResult, actualResult);
        }

        [Fact]
        public void PartitionTwoPivotSecond()
        {
            var listToSort = new List<double> {0, 1};
            var pivotIndex = 1;
            var firstList = new List<double> {0};
            var pivotList = new List<double> {1};
            var secondList = new List<double>();
            var expectedResult = new List<List<double>> {firstList, pivotList, secondList};
            var actualResult = QuickSort.Partition(listToSort, pivotIndex);

            Assert.Equal(expectedResult, actualResult);
        }

        [Fact]
        public void PartitionTwoPivotFirst()
        {
            var listToSort = new List<double> {0, 1};
            var pivotIndex = 0;
            var firstList = new List<double>();
            var pivotList = new List<double> {0};
            var secondList = new List<double> {1};
            var expectedResult = new List<List<double>> {firstList, pivotList, secondList};
            var actualResult = QuickSort.Partition(listToSort, pivotIndex);

            Assert.Equal(expectedResult, actualResult);
        }

        [Fact]
        public void PartitionThreePivotSecond()
        {
            var listToSort = new List<double> {0, 1, 2};
            var pivotIndex = 1;
            var firstList = new List<double> {0};
            var pivotList = new List<double> {1};
            var secondList = new List<double> {2};
            var expectedResult = new List<List<double>> {firstList, pivotList, secondList};
            var actualResult = QuickSort.Partition(listToSort, pivotIndex);

            Assert.Equal(expectedResult, actualResult);
        }

        [Fact]
        public void PartitionThreePivotSecondUnordered()
        {
            var listToSort = new List<double> {2, 1, 0};
            var pivotIndex = 1;
            var firstList = new List<double> {0};
            var pivotList = new List<double> {1};
            var secondList = new List<double> {2};
            var expectedResult = new List<List<double>> {firstList, pivotList, secondList};
            var actualResult = QuickSort.Partition(listToSort, pivotIndex);

            Assert.Equal(expectedResult, actualResult);
        }
    }
}