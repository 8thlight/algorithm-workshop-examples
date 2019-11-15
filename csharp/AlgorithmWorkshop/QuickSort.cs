using System;
using System.Collections.Generic;
using System.Linq;

namespace AlgorithmWorkshop
{
    public static class QuickSort
    {
        public static List<double> Sort(List<double> listToSort)
        {
            if (listToSort.Count <= 1) return listToSort;
            var partition = Partition(listToSort);
            var sorted = new List<double>();
            sorted.AddRange(Sort(partition[0]));
            sorted.AddRange(partition[1]);
            sorted.AddRange(Sort(partition[2]));

            return sorted;
        }

        public static List<List<double>> Partition(List<double> listToSort, int pivotIndex = 0)
        {
            if (!listToSort.Any()) throw new Exception("List cannot be empty.");
            if (pivotIndex == 0) pivotIndex = new Random().Next(listToSort.Count - 1);
            var pivot = listToSort[pivotIndex];
            listToSort.RemoveAt(pivotIndex);
            var ltPivot = new List<double>();
            var pivotList = new List<double> {pivot};
            var gtPivot = new List<double>();
            foreach (var item in listToSort)
            {
                if (item < pivot)
                {
                    ltPivot.Add(item);
                }
                else
                {
                    gtPivot.Add(item);
                }
            }

            return new List<List<double>> {ltPivot, pivotList, gtPivot};
        }
    }
}