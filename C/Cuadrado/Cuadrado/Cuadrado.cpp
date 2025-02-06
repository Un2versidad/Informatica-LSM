#include <iostream>

int lado;
int per;
int area;

int main(){
printf_s("Escribe el valor de un lado del cuadrado\n");
scanf_s("%d", &lado);
	per = lado * 4;
	area = lado * lado;
printf_s("El perimetro del cuadrado es:\n");
printf_s("%d\n", per);
printf_s("El area del cuadrado es:\n");
printf_s("%d\n", area);

	return 0;

}

