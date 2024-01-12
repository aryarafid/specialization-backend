using System;

public class BalikAngka
{
    public static void Main(string[] args)
    {
        string number;
        Console.Write("Enter any Number: ");
        number = Console.ReadLine();
        Console.Write("Reversed Number: ");

        for (int i = number.Length-1; i >= 0; i--)
        {
            Console.Write(number[i]);
        }    
        // Console.Write(number.Length);
        // Console.Write(number[0]);
    
    }
}
