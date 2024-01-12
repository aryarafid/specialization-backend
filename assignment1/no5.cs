using System;

class Program
{
    static void Main()
    {
        Console.Write("Enter the Number= ");
        string input = Console.ReadLine();

        ConvertNumberToString(input);
    }

    static void ConvertNumberToString(string number)
    {
        string[] digitStrings = { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };

        Console.Write("Result: ");
        foreach (char digit in number)
        {
            if (Char.IsDigit(digit))
            {
                int index = (int)Char.GetNumericValue(digit);
                Console.Write(digitStrings[index] + " ");
            }
        }
    }
}