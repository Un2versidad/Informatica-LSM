// Autor: [Franklin Leon]
// Descripcion: Este programa calcula areas y perimetros de figuras geometricas basicas
// utilizando funciones modulares, validacion de entradas y manejo de errores.

clear;

// Funcion principal
function main()
    while %t then
        // Menu principal
        disp("Seleccione una figura geometrica:");
        disp("1. Triangulo");
        disp("2. Paralelogramo");
        disp("3. Cuadrado");
        disp("4. Rectangulo");
        disp("5. Salir");

        opcion = input("Ingrese su opcion: ");

        // Validar entrada
        if ~isnumeric(opcion) | opcion < 1 | opcion > 5 then
            disp("Opcion no valida. Intente nuevamente.");
            continue;
        end

        // Ejecutar opcion seleccionada
        select opcion
        case 1 then
            calcularTriangulo();
        case 2 then
            calcularParalelogramo();
        case 3 then
            calcularCuadrado();
        case 4 then
            calcularRectangulo();
        case 5 then
            disp("Saliendo del programa...");
            break;
        else
            disp("Opcion no valida. Intente nuevamente.");
        end
    end
endfunction

// Funcion para calcular el area y perimetro de un triangulo
function calcularTriangulo()
    disp("Calculo del area y perimetro de un triangulo");

    lado1 = validarEntrada(input("Ingrese la longitud del primer lado: "));
    lado2 = validarEntrada(input("Ingrese la longitud del segundo lado: "));
    lado3 = validarEntrada(input("Ingrese la longitud del tercer lado: "));
    base = validarEntrada(input("Ingrese la longitud de la base: "));
    altura = validarEntrada(input("Ingrese la altura: "));

    area = (base * altura) / 2;
    perimetro = lado1 + lado2 + lado3;

    printf("\nResultados para el Triangulo:\n");
    printf("Area: %g\n", area);
    printf("Perimetro: %g\n", perimetro);
endfunction

// Funcion para calcular el area y perimetro de un paralelogramo
function calcularParalelogramo()
    disp("Calculo del area y perimetro de un paralelogramo");

    lado1 = validarEntrada(input("Ingrese la longitud del lado corto: "));
    lado2 = validarEntrada(input("Ingrese la longitud del lado largo: "));
    base = validarEntrada(input("Ingrese la longitud de la base: "));
    altura = validarEntrada(input("Ingrese la altura: "));

    area = base * altura;
    perimetro = 2 * (lado1 + lado2);

    printf("\nResultados para el Paralelogramo:\n");
    printf("Area: %g\n", area);
    printf("Perimetro: %g\n", perimetro);
endfunction

// Funcion para calcular el area y perimetro de un cuadrado
function calcularCuadrado()
    disp("Calculo del area y perimetro de un cuadrado");

    lado = validarEntrada(input("Ingrese la longitud del lado: "));

    area = lado ^ 2;
    perimetro = 4 * lado;

    printf("\nResultados para el Cuadrado:\n");
    printf("Area: %g\n", area);
    printf("Perimetro: %g\n", perimetro);
endfunction

// Funcion para calcular el area y perimetro de un rectangulo
function calcularRectangulo()
    disp("Calculo del area y perimetro de un rectangulo");

    lado1 = validarEntrada(input("Ingrese la longitud del primer lado: "));
    lado2 = validarEntrada(input("Ingrese la longitud del segundo lado: "));

    area = lado1 * lado2;
    perimetro = 2 * (lado1 + lado2);

    printf("\nResultados para el Rectangulo:\n");
    printf("Area: %g\n", area);
    printf("Perimetro: %g\n", perimetro);
endfunction

// Funcion para validar entradas numericas
function valor = validarEntrada(entrada)
    if ~isnumeric(entrada) | entrada <= 0 then
        error("Entrada no valida. Por favor, ingrese un numero positivo.");
    end
    valor = entrada;
endfunction

// Ejecutar el programa
main();