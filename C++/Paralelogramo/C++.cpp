//Librerias
#include <iostream>
#include <windows.h>
#include <Lmcons.h>
#include <sstream>
#include <string>
#include <algorithm>

using namespace std;

//Variables
float ladoa, ladob, base, altura, peri, area;
int opcion;

//Funcion para calcular
void calcular() {
	TCHAR nombre[UNLEN + 1];
	DWORD s = UNLEN + 1;

	if (GetUserName((TCHAR*)nombre, &s))
		wcout << L"---Bienvenido, " << nombre << L"!---\n";
	else
		cout << "---Bienvenido, usuario sin nombre!---\n";

	std::cout << "\nPorfavor introduzca la distancia del lado más corto y el más largo del paralelogramo, la distancia de la base y la distancia de la altura\n";

	std::cout << "\n(*) Distancia corta: ";
	std::cin >> ladoa;

	std::cout << "\n(*) Distancia larga: ";
	std::cin >> ladob;

	std::cout << "\n(*) Distancia de la base: ";
	std::cin >> base;

	std::cout << "\n(*) Distancia de la altura: ";
	std::cin >> altura;

	peri = 2 * (ladoa + ladob);
	area = (base * altura);

	std::cout << "\n----------------------Resultados-----------------------\n";

	std::cout << "\n--El perímetro del paralelogramo es: " << peri;
	std::cout << "\n--El área del paralelogramo es: " << area << endl;

	std::cout << "\n-----------------------Repetir-------------------------\n";

	cout << "\nDesea calcular otro paralelogramo [1]=Si [2]=No: ";
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
		cout << "\nDesea calcular otro paralelogramo [1]=Si [2]=No: ";

		cin >> opcion;
	}
}

int main() {
	calcular();
}