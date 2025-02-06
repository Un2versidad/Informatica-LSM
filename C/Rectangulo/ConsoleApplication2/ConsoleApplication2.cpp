// ConsoleApplication2.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>

int lado = 0;
int lado2 = 0;
int per = 0;
int area = 0;
int inte= 0;
int main(){
printf_s("Buenas\n");
printf_s("Escribe uno de los lados del rectangulo\n");
scanf_s("%d/n", &lado);
printf_s("Escribe el otro lado del rectangulo\n");
scanf_s("%d/n", &lado2);
per = 2 * (lado + lado2);
printf_s("Espere un momento...\n");
int c, d;

for (c = 1; c <= 32767 * 2; c++)
for (d = 1; d <= 32767 * 2; d++)
{
}
while (lado == lado2)
	{
	printf_s("introduzca los lados del rectangulo de nuevo, pero que sean de distinto tamaño\n");
	printf_s("Escribe uno de los lados rectangulo\n");
	scanf_s("%d/n", &lado);
	printf_s("Escribe el otro lado del rectangulo\n");
	scanf_s("%d/n", &lado2);
	inte = inte + 1;
	if (inte == 3)
	{
		printf_s("Se necesita reiniciar el programa\n");
		return 0;
	}
	}
printf_s("El perimetro del rectangulo es de:\n"); printf_s("%d\n", per);
printf_s("El area del rectangulo es de:\n"); area = lado * lado2; printf_s("%d\n", area);

return 0;
}



// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
