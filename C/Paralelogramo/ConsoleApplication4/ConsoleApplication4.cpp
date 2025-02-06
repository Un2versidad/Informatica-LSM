#include <iostream>

int lado, lado2;
int base = 0;
int altu = 0;
int per = 0;
int area = 0;
int inte = 0;
int main() {
	printf_s("Buenas\n");
	printf_s("Escribe uno de los lados paralelogramo\n");
	scanf_s("%d/n", &lado);
	printf_s("Escribe el otro lado del paralelogramo\n");
	scanf_s("%d/n", &lado2);
	printf_s("Espere un momento...\n");
	int c, d;
	for (c = 1; c <= 32767 * 2; c++)
		for (d = 1; d <= 32767 * 2; d++)
		{
		}
	while(lado == lado2)
	{
		printf_s("introduzca los lados del paralelogramo de nuevo, pero que sean de distinto tamaño\n");
		printf_s("Escribe uno de los lados paralelogramo\n");
		scanf_s("%d/n", &lado);
		printf_s("Escribe el otro lado del paralelogramo\n");
		scanf_s("%d/n", &lado2);
		inte = inte + 1;
		if (inte == 3) 
		{
			printf_s("Se necesita reiniciar el programa\n");
			return 0;
		}
	}
	printf_s("El perimetro del paralelogramo es de:\n"); per = 2 * (lado + lado2);
	printf_s("%d\n", per);
	for (c = 1; c <= 32767 * 2; c++)
		for (d = 1; d <= 32767 * 2; d++)
		{
		}
	printf_s("Escriba la base del paralelogramo\n");
	scanf_s("%d/n", &base);
	printf_s("Escriba la altura del paralelogramo\n");
	scanf_s("%d/n", &altu);
	printf_s("Espere un momento...\n");
	for (c = 1; c <= 32767 * 2; c++)
		for (d = 1; d <= 32767 * 2; d++)
		{
		}
	printf_s("El area paralelogramo es de:\n"); area = base * altu;
	printf_s("%d\n", area);

	return 0;
}