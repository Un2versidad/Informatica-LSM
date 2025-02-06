//Librerias
#include <iostream>
#include <windows.h>
#include <Lmcons.h>

using namespace std;

//Variables
float ladoA, ladob, ladoc, base, altura, peri, area;
int opcion;
int espacios, filas;

//Funcion para calcular
void calcular() {
	TCHAR nombre[UNLEN + 1];
	DWORD s = UNLEN + 1;

	if (GetUserName((TCHAR*)nombre, &s))
		wcout << L"---Bienvenido, " << nombre << L"!---\n";
	else
		cout << "---Bienvenido, usuario sin nombre!---\n";

	std::cout << "\nPorfavor introduzca la distancia de los tres lados del triángulo, la distancia de la base y la distancia de la altura\n";

	std::cout << "\n(*) Distancia 1: ";
	std::cin >> ladoA;

	std::cout << "\n(*) Distancia 2: ";
	std::cin >> ladob;

	std::cout << "\n(*) Distancia 3: ";
	std::cin >> ladoc;

	std::cout << "\n(*) Distancia de la base: ";
	std::cin >> base;

	std::cout << "\n(*) Distancia de la altura: ";
	std::cin >> altura;

	peri = ladoA + ladob + ladoc;
	area = (base * altura) / 2;

	filas = altura;
	std::cout << "\n-----------Triangulo (En base a la altura)-------------\n";
	for (int i = 1, k = 0; i <= filas; ++i, k = 0)
	{
		for (espacios = 1; espacios <= filas - i; ++espacios)
		{
			cout << "  ";
		}

		while (k != 2 * i - 1)
		{
			cout << "* ";
			++k;
		}
		cout << endl;
	}
	std::cout << "\n-------------------Tipo de Triangulo-------------------\n";
	if (ladoA == ladob && ladob == ladoc) {
		std::cout << "\n--El triángulo es equilátero\n";
	}
	else if (ladoA == ladob || ladob == ladoc || ladoA == ladoc) {
		std::cout << "\n--El triángulo es isósceles\n";
	}
	else {
		std::cout << "\n--El triángulo es escaleno\n";
	}
	std::cout << "\n----------------------Resultados-----------------------\n";

	std::cout << "\n--El perímetro del triángulo es: " << peri;
	std::cout << "\n--El área del triángulo es: " << area << endl;

	std::cout << "\n-----------------------Repetir-------------------------\n";

	cout << "\nDesea calcular otro triangulo [1]=Si [2]=No: ";

	cin >> opcion;

	if (opcion == 1)
	{
		calcular();
	}
	else if (opcion == 2) {
		exit(-1);
	}
	else {
		cout << "\nLa opción seleccionada no existe... Vuelva a seleccionar alguna opción disponible\n";
		cout << "\nDesea calcular otro triangulo [1]=Si [2]=No: ";

		cin >> opcion;
	}
}

int main() {
	//Repetir calculo
	calcular();
}
