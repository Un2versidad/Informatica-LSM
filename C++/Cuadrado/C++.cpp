//Librerias
#include <iostream>
#include <windows.h>
#include <Lmcons.h>

using namespace std;

//Variables
float distancia, peri, area;
int opcion;

void cuadrado(int lado, int pos)
{
	int margen = lado * (pos - 1) * 2;

	cout << endl;

	for (int i = 1; i <= lado; i++)
	{
		for (int j = 0; j < margen; j++)
			cout << "  ";

		for (int k = 0; k < lado; k++)
			cout << "* ";

		cout << endl;
	}
}

//Funcion para calcular
void calcular() {
	TCHAR nombre[UNLEN + 1];
	DWORD s = UNLEN + 1;

	if (GetUserName((TCHAR*)nombre, &s))
		wcout << L"---Bienvenido, " << nombre << L"!---\n";
	else
		cout << "---Bienvenido, usuario sin nombre!---\n";

	std::cout << "\nPorfavor introduzca la distancia de los tres lados del cuadrado, la distancia de la base y la distancia de la altura\n";

	std::cout << "\n(*) Porfavor introduzca la distancia de un lado del cuadrado: ";
	std::cin >> distancia;

	peri = 4 * distancia;
	area = distancia * distancia;

	std::cout << "\n-----------Cuadrado (En base a los lados)-------------\n";
	cuadrado(distancia, 1);

	std::cout << "\n----------------------Resultados-----------------------\n";

	std::cout << "\n--El perímetro del cuadrado es: " << peri;
	std::cout << "\n--El área del cuadrado es: " << area << endl;

	std::cout << "\n-----------------------Repetir-------------------------\n";

	cout << "\nDesea calcular otro cuadrado [1]=Si [2]=No: ";

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
		cout << "\nDesea calcular otro cuadrado [1]=Si [2]=No: ";

		cin >> opcion;
	}
}

int main() {
	//Repetir calculo
	calcular();
}
