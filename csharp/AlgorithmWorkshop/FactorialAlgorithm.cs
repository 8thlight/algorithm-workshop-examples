using System.Linq;
using System.Numerics;

namespace AlgorithmWorkshop
{
    public static class FactorialAlgorithm
    {
        public static int Factorial(this int x)
        {
            if (x < 3) return x;
            return x * Factorial(x - 1);
        }

        public static int FactorialIterative(this int x)
        {
            if (x < 3) return x;
            return Enumerable.Range(1, x).Aggregate(1, (acc, number) => acc * number);
        }

        public static BigInteger BigIntFactorial(this BigInteger x)
        {
            if (x < 3) return x;
            return x * BigIntFactorial(x - 1);
        }
    }
}