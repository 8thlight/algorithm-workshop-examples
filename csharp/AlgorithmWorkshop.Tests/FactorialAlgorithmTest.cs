using System.Collections.Generic;
using System.Numerics;
using Xunit;

namespace AlgorithmWorkshop.Tests
{
    public class FactorialAlgorithmTest
    {
        [Fact]
        public void IdenticalFactorials()
        {
            var numbersIdenticalToFactorial = new List<int> {0, 1, 2};
            foreach (var number in numbersIdenticalToFactorial)
            {
                Assert.Equal(number, number.Factorial());
                Assert.Equal(number, number.FactorialIterative());
                Assert.Equal(number, ((BigInteger) number).BigIntFactorial());
            }
        }

        [Fact]
        public void Three()
        {
            var expectedResult = 3 * 2 * 1;

            Assert.Equal(expectedResult, 3.Factorial());
            Assert.Equal(expectedResult, 3.FactorialIterative());
            Assert.Equal(expectedResult, ((BigInteger) 3).BigIntFactorial());
        }

        [Fact]
        public void Four()
        {
            var expectedResult = 4 * 3 * 2 * 1;

            Assert.Equal(expectedResult, 4.Factorial());
            Assert.Equal(expectedResult, 4.FactorialIterative());
            Assert.Equal(expectedResult, ((BigInteger) 4).BigIntFactorial());
        }

        [Fact]
        public void Five()
        {
            var expectedResult = 5 * 4 * 3 * 2 * 1;

            Assert.Equal(expectedResult, 5.Factorial());
            Assert.Equal(expectedResult, 5.FactorialIterative());
            Assert.Equal(expectedResult, ((BigInteger) 5).BigIntFactorial());
        }

        [Fact]
        public void IntegerFactorialFailsAtTwenty()
        {
            var expectedResult = 2432902008176640000;

            Assert.NotEqual(expectedResult, (long) 20.Factorial());
            Assert.NotEqual(expectedResult, (long) 20.FactorialIterative());

            Assert.Equal(expectedResult, ((BigInteger) 20).BigIntFactorial());
        }

        [Fact]
        public void OneHundred()
        {
            var oneHundredFactorial = new byte[]
            {
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 198, 53, 39, 234, 2, 139, 238, 210, 46, 183, 179, 236, 198, 32,
                148, 202, 12, 87, 69, 23, 57, 16, 223, 28, 50, 58, 148, 178, 181, 33, 235, 112, 154, 239, 102, 233, 22,
                13, 164, 189, 75, 213, 40, 149, 6, 36, 220, 149, 195, 78, 150, 48, 27
            };
            var expectedResult = new BigInteger(oneHundredFactorial);
            var actualResult = new BigInteger(100).BigIntFactorial();

            Assert.Equal(expectedResult, actualResult);
        }
    }
}