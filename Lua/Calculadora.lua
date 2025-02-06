-- Autor: [Franklin Leon]
-- Descripcion: Este programa calcula areas y perimetros de figuras geometricas basicas
-- utilizando funciones modulares, validacion de entradas y manejo de errores.

-- Funcion principal
function main()
    while true do
        -- Menu principal
        print("Seleccione una figura geometrica:")
        print("1. Triangulo")
        print("2. Paralelogramo")
        print("3. Cuadrado")
        print("4. Rectangulo")
        print("5. Salir")

        -- Leer opcion del usuario
        local opcion = tonumber(io.read())

        -- Validar entrada
        if not opcion or opcion < 1 or opcion > 5 then
            print("Opcion no valida. Intente nuevamente.\n")
        else
            -- Ejecutar opcion seleccionada
            if opcion == 1 then
                calcularTriangulo()
            elseif opcion == 2 then
                calcularParalelogramo()
            elseif opcion == 3 then
                calcularCuadrado()
            elseif opcion == 4 then
                calcularRectangulo()
            elseif opcion == 5 then
                print("Saliendo del programa...")
                break
            end
        end
    end
end

-- Funcion para calcular el area y perimetro de un triangulo
function calcularTriangulo()
    print("\nCalculo del area y perimetro de un triangulo")

    local lado1 = validarEntrada(tonumber(io.read("Ingrese la longitud del primer lado: ")))
    local lado2 = validarEntrada(tonumber(io.read("Ingrese la longitud del segundo lado: ")))
    local lado3 = validarEntrada(tonumber(io.read("Ingrese la longitud del tercer lado: ")))
    local base = validarEntrada(tonumber(io.read("Ingrese la longitud de la base: ")))
    local altura = validarEntrada(tonumber(io.read("Ingrese la altura: ")))

    local area = (base * altura) / 2
    local perimetro = lado1 + lado2 + lado3

    print("\nResultados para el Triangulo:")
    print(string.format("Area: %.2f", area))
    print(string.format("Perimetro: %.2f\n", perimetro))
end

-- Funcion para calcular el area y perimetro de un paralelogramo
function calcularParalelogramo()
    print("\nCalculo del area y perimetro de un paralelogramo")

    local lado1 = validarEntrada(tonumber(io.read("Ingrese la longitud del lado corto: ")))
    local lado2 = validarEntrada(tonumber(io.read("Ingrese la longitud del lado largo: ")))
    local base = validarEntrada(tonumber(io.read("Ingrese la longitud de la base: ")))
    local altura = validarEntrada(tonumber(io.read("Ingrese la altura: ")))

    local area = base * altura
    local perimetro = 2 * (lado1 + lado2)

    print("\nResultados para el Paralelogramo:")
    print(string.format("Area: %.2f", area))
    print(string.format("Perimetro: %.2f\n", perimetro))
end

-- Funcion para calcular el area y perimetro de un cuadrado
function calcularCuadrado()
    print("\nCalculo del area y perimetro de un cuadrado")

    local lado = validarEntrada(tonumber(io.read("Ingrese la longitud del lado: ")))

    local area = lado ^ 2
    local perimetro = 4 * lado

    print("\nResultados para el Cuadrado:")
    print(string.format("Area: %.2f", area))
    print(string.format("Perimetro: %.2f\n", perimetro))
end

-- Funcion para calcular el area y perimetro de un rectangulo
function calcularRectangulo()
    print("\nCalculo del area y perimetro de un rectangulo")

    local lado1 = validarEntrada(tonumber(io.read("Ingrese la longitud del primer lado: ")))
    local lado2 = validarEntrada(tonumber(io.read("Ingrese la longitud del segundo lado: ")))

    local area = lado1 * lado2
    local perimetro = 2 * (lado1 + lado2)

    print("\nResultados para el Rectangulo:")
    print(string.format("Area: %.2f", area))
    print(string.format("Perimetro: %.2f\n", perimetro))
end

-- Funcion para validar entradas numericas
function validarEntrada(valor)
    while not valor or valor <= 0 do
        print("Entrada no valida. Por favor, ingrese un numero positivo.")
        valor = tonumber(io.read())
    end
    return valor
end

-- Ejecutar el programa
main()