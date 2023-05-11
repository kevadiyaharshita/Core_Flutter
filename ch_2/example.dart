import 'dart:io'; // importing std. lib.
void main()
{
    int my_number = int.parse(stdin.readLineSync()!); // readLineSync() method
    print("The Entered number is $my_number"); // print line
}