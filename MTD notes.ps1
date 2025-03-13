DAY1 THURSDAY 06-03-2025

IMPORTANT GIT COMMANDS

$ git status
// To know the current status of our Repo

$ git clone <URL>
// To download a Repo

git clone https://github.com/neelmyna/vvce_mar25
// Example to download the repo

$ git pull origin main
// Command to download the updated Repo from the server to the local machine

To make our computer recognise our git account, we must run these 2 conguration commands:

$ git config --global user.name "neelmyna"

$ git config --global user.email "nithin@gmail.com"

STEPS TO CREATE A NEW PAT IN GITHUB:

Login to github
Right top corner Click on your profile
Scroll down and click settings
Next window, scroll down, on left bottom corner, click developer settings
Next window, on top left, Click personal access tokens, Click again on token Classic
Next window, Click on Generate new token button and select Tokens classic
(Now u may be asked to enter password)
Next, Add a note for the new PAT we are creating
Select Expiry -> No expiration
Select the Top check box named REPO
Scroll down fully and click the green button (generate token)
Now, copy the PAT
Come to your gmail and mail the PAT to yourself or to one of your own account (Mail Subject: GIT PAT)

Now, let us Sync our Remote Repo with Local Repo
In other words, we are going to CLONE our Repo using the PAT.
By doing so, we can perform Read-Write operations on our Remote Repo without having to Authenticate everytime.

$ git clone https://<PAT>@github.com/neelmyna/vvce_mar25

Commands required to upload files from local repo to remote:

$ git add .
// Git will mark(stage) all the files that need to be updated

$ git commit -m "notes file of the mtd training is added"
// Git creates an object that will inlclude all the files to be uploaded and also it is secured (encription)

$ git push origin main
// the object now is sent to the server (the remote repo is updated)

// Accept a number from the user and check if it is Even.
#include<stdio.h>

int main() {
    int inutNum = 0;
    puts("Enter a number to check if it is Even");
    scanf("%d", &inutNum);
    if(inutNum % 2 == 0)
        printf("%d is Even", inutNum);
    

}
---------------------------------
// Accept a number from the user and check if it is Even or not
#include <stdio.h>

int main()
{
    int inutNum = 0;
    puts("Enter a number to check if it is Even");
    int returnValue = scanf("%d", &inutNum);
    if (inutNum % 2 == 0)
        printf("%d is Even number", inutNum);
    else
        printf("%d is not an Even number", inutNum);
    return 0;
}
----------------------------
1	2
2	4
3	8
4	16

0000
1111	15	f	F

f f  = 240 + 15 = 255
1111 1111
0000 0000
0 to 255

11001 = 25
111011  59


1111 1111

int num = -21;
-21
21
0001 0101
1110 1010
1110 1011
-1*2(7) + 1*2(6) + 1*2(5) + 11
-128 + 64 + 32 + 11
-64 + 43
-21

by default all numbers are signed

int num;
signed int num;
--------------------------
TYPE CASTING

float num = 11 / 3;
printf("%f", num);

int num = 11 / 3.0;
printf("%d", num);

11 to 11.0 (int to double) implicit up cast
we get 3.666667
3.666667 is converted to int (from double to int)
implicit down cast

int num = (int) 11.5f / 2.0;
printf("%d", num);

11.5f to 11 (float to int) explicit down cast
11 / 2.0
11 to 11.0 (int to double) implicit up cast
11.0 / 2.0
5.5
5.5 to 5 (double to int) implicit down cast
------------------------------------
#include <stdio.h>

int main()
{
    int i = -1;
    i -= -1;
    printf("%d", i);
    return 0;
}
------------------------------------
Day1 student feedback link:

https://docs.google.com/forms/d/1ox_1T_FQtzcQtC49wHtExgAwqVJgzTm1o8QqNkqA690/edit

Day1 Assessment Link:

https://docs.google.com/forms/d/1EeGEEXDQr3LvW9fYCpQ1VMpzZ8m2PTfwghtx9MOxHB8/edit

-------------------------------------------------
1. Program to accept a number from user and print its Math table
2. Program to accept average marks of the student and print result as follows. Also check for invalid score
0 - to 49 Fail
50 to 70  Second class
71- 90 Frist
91 - 100 Distinction
3. Check if a number is perfect square
4. Find the 2nd smallest digit in a number
5. Find sum of Odd placed Even digits in a number.
23434413 = o/p=10
----------------------------------------------
Youtube links:
1. to create github and sync local and remote repos
https://www.youtube.com/watch?v=EWttNzNBqBc&t=2s

2. C programming content
https://www.youtube.com/watch?v=5iFdwNb2WKI&t=9s

3. How to install and arrange Apps in our laptops
https://www.youtube.com/watch?v=Yt1whvpWMU0&t=20s
---------------------------------------------------
DAY2 FRIDAY 07-03-2025

Arithmetic Operators: + - * / %
All are binary operators
I/P are numbers
O/P is number
Used with Infix Notation
To perform any arithmetic operation, DT of both the operands must be same
Left to right associtivity w.r.t. reading the values/expressions
For the calculation to happen, the user/programmer given infix expression must be converted to postfix.
The operators have different hierarchy(precedence)
------------------------------------------
Relational Operators: > < == != >= <=

for int i = 1; i <= 10; i++

for int i = 1; i < 11; i++

[10, 20]

num >= 10 and num <= 20

(10, 30)
num > 10 and num < 30

[10, 40)
----------------------------------------------
Logical operators: & && | || !

Assignment:
int n = 10;
printf("%d  %d  %d  %d  %d", n--, ++n, --n, n--, n++);
----------------------------------------

#include <stdio.h>

int main()
{
    int a = 3, b = -2, c = 8;
    b++;
    printf("%d  %d  %d \n", a, b, c); // 3 -1  8
    ++b;
    printf("%d  %d  %d \n", a, b, c); // 3  0  8
    c = a--;
    printf("%d  %d  %d \n", a, b, c); // 2  0  3
    b = ++c;
    printf("%d  %d  %d \n", a, b, c); // 2  4  4
    c = a-- + --a;
    //  2   +  0
    printf("%d  %d  %d \n", a, b, c); // 0  4  2
}
----------------------------------------
int main()
{
    int a = 13, b = 2, c = -8;
    if (a <= b & (++b != --c || a > c++))
        puts("Tadiamdamol");
    else
        puts("Pushpagiri");
    printf("%d  %d  %d \n", a, b, c); // T13 3 -9, 13 4 -9T
}
-------------------------------------------
5 STEPS SOLVE A PROBLEM.

1. Understand the problem. Recognise the I/P data and the relavent information. Isolate the unwanted data and info.
Recognise the O/P.
2. Find the solution(s) with all possible ways, trial and error method, applying an algorithm etc.
3. Write down the Algorithm
Step by step procedure to solve the problem'.
Each step must be Atomic (SRP), simple and finite.
4. Write the Fake code (pseudocode)
5. Code it

Check if a number (+ve integer) is Perfect Square.

1. Read I/P number, say N
2. ROOT = (INTEGER) squareRoot(N)
   ROOT = floor(squareRoot(N))
3. if ROOT * ROOT == N then
	 print N is PS
   else
	 print N is not PS
	 
40	6.4331	6	36
196	14.0	14	196	

#include <stdio.h>
#include <math.h>

int main()
{
    int inputNum = 0;
    puts("Enter a number to check if it is Perfect Square");
    scanf("%d", &inputNum);
    int root = floor(sqrt(inputNum));
    if (root * root == inputNum)
        printf("%d is a perfect square", inputNum);
    else
        printf("%d is not a perfect square", inputNum);
}
-------------------------------------------------

10 sqrt(100)
float sqrt(int);
double sqrt(double);
float sqrt(float);

#include <stdio.h>
#include <math.h>

int main()
{
    int averageScore = 0;
    puts("Enter average score of the student to print the result");
    scanf("%d", &averageScore);
    if (averageScore >= 0 && averageScore <= 49)
        puts("Result is Fail");
    else if (averageScore <= 70)
        puts("Result is second class");
    else if (averageScore <= 90)
        puts("Result is First class");
    else if (averageScore <= 100)
        puts("Result is Distinction");
    else
        puts("Invalid Score endtered");
}
-------------------------------------------------
Find Nth term of the series: 1 2 2 3 3 5 5 7 8 11 13 13
11th
Odd terms: Fibo series (N+1)/2 th fibo term is the Nth
20th
Even terms: Prime numbers: N/2th Prime term

Read N
if N % 2 == 0:
	findPrimeTerm(N/2)
else
	findFiboTerm(N/2+1)
---------------------------------------------
int main()
{
    int n1 = 89;   // decimal
    int n2 = 067;  // octal
    int n3 = 0x99; // hexa decimal
    printf("%d  %i  %o  %x \n", n1, n1, n1, n1);
    //      89  89  131 59
    printf("%d  %i  %o  %x \n", n2, n2, n2, n2);
    //      55  55  67  37
    printf("%d  %i  %o  %x \n", n3, n3, n3, n3);
    //      153 153 231 99
}
---------------------------------------------
int inum = 12345;
float fnum = 74.916f;
char str[32] = "mysooru";

printf("%d \n", inum); // 12345
printf("%7d \n", inum); // __12345
printf("%3d \n", inum); // 12345
printf("%-8d \n", inum); // 12345***
printf("%07d \n", inum); // 0012345
printf("%-07d \n", inum); // 12345

Accept a number from the user and print Math table

6 * 1 = 6
6 * 2 = 12
6 * 3 = 18

6 * 10 = 60
-----------------------------------
Find 2nd smallest digit in the given number.

674783
35
8

789
24
6

Loop inside a loop

8 iterations
1 or 2

O(n square)

10 + 2 = 12 iterations

Solve this problem using a loop alone.
---------------------------------------------------
Student Feedback - Day2
https://docs.google.com/forms/d/1nEy8Etbl5Auw7wkSpDETvm5XpKusauvyrwQW7tkwscI/edit

Day2 Assessment Link:
https://docs.google.com/forms/d/1aV4PmYfF-zRCc0JI0af9mXzY0R1PPfmFvoyBWpD0uIc/edit
------------------------------------------
Day2 Assignments:
1. Accept a number and generate the next bigger possible number (not biggest) which must have all the digits of the given number with same frequency.
2. Tax calculation program 
3. 
4. 
------------------------------------------
DAY3 SATURDAY 07-03-2025
switch case restaurant app
different options with gcc (-E -S -c -o -lm .....)
functions
pointers
different options with gcc
multi file program

recursion
storage classes
hacker rank problem solving on Arrays
-------------------------------
POINTERS

& operator:
	"Address of" operator
It can be applied only to a variable, including a pointer, because a pointer is also a variable.
When we apply & to a variable we get its address.

* operator:
	"Value At" or "Dereferencing" operator
It can be applied only to an address, including to a pointer because pointer holds an address.
When we apply * to an address, we get the value present in that address.

int num = 20;
---------------------

int main() {
    float num = 5.5f;
    printf("Value of num = %f \n", num);
    printf("Address of num = %u \n", &num);
    printf("Value of num = %f \n", *(&num));
}

*(&num)
= value at [ address of(num)]
= v at [1101]
= 20 = num
-------------------------------
// behaviour of a number
int main()
{
    int num = 30;
    printf("%d  %d  %d  %d", num - 1, num, num + 1, num + 2);
}
------------------------------
// behaviour of an address
int main()
{
    double num = 30.11; // assume address of 1101
    printf("%u  %u  %u  %u \n", &num - 1, &num, &num + 1, &num + 2);
    printf("%p  %p  %p  %p", &num - 1, &num, &num + 1, &num + 2);
}
------------------------------

int main()
{
    char c;
    int i;
    short int si;
    double d;
    printf("%d  %d  %d  %d \n", sizeof(char), sizeof(int), sizeof(short int), sizeof(double));
    printf("%d  %d  %d  %d \n", sizeof(char*), sizeof(int*), sizeof(short int*), sizeof(double*));
    printf("%d  %d  %d  %d \n", sizeof(&c), sizeof(&i), sizeof(&si), sizeof(&d));
}
----------------------------------------
int main()
{
    char c = 'A'; // Assume address of c as 101
    int i = 10;   // Assume address of i as 201
    char *pc = (char *)&i;
    int *pi = (int *)&c;
    printf("%u  %u \n", &c, &i);         // 101  201
    printf("%u  %u \n", pc, pi);         // 201  101
    printf("%u  %u \n", pc + 1, pi + 1); // 205  105
    printf("%c  %d \n", c + 1, i + 1);   // B  11
}
-----------------------------------
#include <stdio.h>

int main() {
    int num; // assume junk
    int *p = NULL; //  assume junk address. assume p holds address of printer
    printf("%u", p); // we got address of printer
    *p = somevalue;
}

WILD Pointer
------------------------------------
int main(int argCount, char *argv[])
{
    int num = 0;
    short int counter = 0;
    while (num == 0)
    {
        printf("I am immortal - %d \n", counter);
        counter++;
    }
    return 0;
}


call_function(number)
	

Read N
if number is zero
	print zero as result
else
	call_function(N)
---------------------------------
void myFunction(int num) // recursive function
{
    double array[10];
    printf("I am immortal - %d \n", num);
    num++;
    myFunction(num); // recursive call
}

int main(int argCount, char *argv[])
{
    myFunction(0);
    return 0;
}
----------------------------------------
Find sum of digits of a number using Recursion

Day3 Assessment:

https://docs.google.com/forms/d/1NCrPHR6uPdPNgs6nh7H-UDbPvPCZp7S9uTT-7mGVkMk/edit

Day3 Student Feedback Link:

https://docs.google.com/forms/d/172WpW8BpV9MzVfKXqkYzbG_hxFUHdliQZ88kT-iSPK4/edit
