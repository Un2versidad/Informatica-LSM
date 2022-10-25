#include <iostream>
#include <conio.h>

int main()
{
    int x, y, z, c;
    std::cout << "Usted Selecciono la opcion de calculo de un perimetro de un triangulo.";

    std::cin >> c;

    if (c == 1)
    {
        std::cout << "Usted Selecciono la opcion de calculo de un perimetro de un triangulo.";
        std::cout << "Escribe el valor de la a del trianculo : \n";
        std::cin >> x;

        std::cout << "Escribe el valor de la b del trianculo : \n";
        std::cin >> y;

        std::cout << "Escribe el valor de la c del trianculo : \n";
        std::cin >> z;

        std::cout << "El resultado de la operacion es" << x + y + z ;
    }
    else if (c == 2)
    {
        std::cout << "Usted Selecciono la opcion de calculo del area de un triangulo.";
        std::cout << "Usted Selecciono la opcion de calculo de un perimetro de un triangulo.";
        std::cout << "Escribe el lado a del triangulo : \n";
        std::cin >> x;

        std::cout << "Escribe la b del perimetro: \n";
        std::cin >> y;

        std::cout << "El resultado de la operacion es" << x + y + z;
    }
    else
    {
        std::cout << "La opcion seleccionada no esta disponible por el momento...";
    }
    return 0;
}