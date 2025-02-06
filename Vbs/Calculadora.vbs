' Autor: [Franklin Leon]
' Descripcion: Este programa calcula areas y perimetros de figuras geometricas basicas
' utilizando funciones modulares, validacion de entradas y manejo de errores.

Option Explicit

' Funcion principal
Sub Main()
    Dim opcion
    Do
        ' Menu principal
        opcion = InputBox("Seleccione una figura geometrica:" & vbCrLf & _
                          "1. Triangulo" & vbCrLf & _
                          "2. Paralelogramo" & vbCrLf & _
                          "3. Cuadrado" & vbCrLf & _
                          "4. Rectangulo" & vbCrLf & _
                          "5. Salir", "Menu Principal")

        ' Validar entrada
        If Not IsNumeric(opcion) Or Len(Trim(opcion)) = 0 Then
            MsgBox "Por favor, ingrese un numero valido.", vbExclamation, "Error"
        Else
            Select Case CInt(opcion)
                Case 1: CalcularTriangulo
                Case 2: CalcularParalelogramo
                Case 3: CalcularCuadrado
                Case 4: CalcularRectangulo
                Case 5: Exit Do
                Case Else: MsgBox "Opcion no valida. Intente nuevamente.", vbExclamation, "Error"
            End Select
        End If
    Loop
End Sub

' Funcion para calcular el area y perimetro de un triangulo
Sub CalcularTriangulo()
    Dim lado1, lado2, lado3, base, altura, area, perimetro
    On Error Resume Next

    lado1 = ValidarEntrada(InputBox("Ingrese la longitud del primer lado:", "Triangulo"))
    lado2 = ValidarEntrada(InputBox("Ingrese la longitud del segundo lado:", "Triangulo"))
    lado3 = ValidarEntrada(InputBox("Ingrese la longitud del tercer lado:", "Triangulo"))
    base = ValidarEntrada(InputBox("Ingrese la longitud de la base:", "Triangulo"))
    altura = ValidarEntrada(InputBox("Ingrese la altura:", "Triangulo"))

    If Err.Number <> 0 Then
        MsgBox "Error en los datos ingresados. Por favor, intente nuevamente.", vbCritical, "Error"
        Exit Sub
    End If

    area = (base * altura) / 2
    perimetro = lado1 + lado2 + lado3

    MsgBox "Resultados para el Triangulo:" & vbCrLf & _
           "Area: " & area & vbCrLf & _
           "Perimetro: " & perimetro, vbInformation, "Resultado"
End Sub

' Funcion para calcular el area y perimetro de un paralelogramo
Sub CalcularParalelogramo()
    Dim lado1, lado2, base, altura, area, perimetro
    On Error Resume Next

    lado1 = ValidarEntrada(InputBox("Ingrese la longitud del lado corto:", "Paralelogramo"))
    lado2 = ValidarEntrada(InputBox("Ingrese la longitud del lado largo:", "Paralelogramo"))
    base = ValidarEntrada(InputBox("Ingrese la longitud de la base:", "Paralelogramo"))
    altura = ValidarEntrada(InputBox("Ingrese la altura:", "Paralelogramo"))

    If Err.Number <> 0 Then
        MsgBox "Error en los datos ingresados. Por favor, intente nuevamente.", vbCritical, "Error"
        Exit Sub
    End If

    area = base * altura
    perimetro = 2 * (lado1 + lado2)

    MsgBox "Resultados para el Paralelogramo:" & vbCrLf & _
           "Area: " & area & vbCrLf & _
           "Perimetro: " & perimetro, vbInformation, "Resultado"
End Sub

' Funcion para calcular el area y perimetro de un cuadrado
Sub CalcularCuadrado()
    Dim lado, area, perimetro
    On Error Resume Next

    lado = ValidarEntrada(InputBox("Ingrese la longitud del lado:", "Cuadrado"))

    If Err.Number <> 0 Then
        MsgBox "Error en los datos ingresados. Por favor, intente nuevamente.", vbCritical, "Error"
        Exit Sub
    End If

    area = lado ^ 2
    perimetro = 4 * lado

    MsgBox "Resultados para el Cuadrado:" & vbCrLf & _
           "Area: " & area & vbCrLf & _
           "Perimetro: " & perimetro, vbInformation, "Resultado"
End Sub

' Funcion para calcular el area y perimetro de un rectangulo
Sub CalcularRectangulo()
    Dim lado1, lado2, area, perimetro
    On Error Resume Next

    lado1 = ValidarEntrada(InputBox("Ingrese la longitud del primer lado:", "Rectangulo"))
    lado2 = ValidarEntrada(InputBox("Ingrese la longitud del segundo lado:", "Rectangulo"))

    If Err.Number <> 0 Then
        MsgBox "Error en los datos ingresados. Por favor, intente nuevamente.", vbCritical, "Error"
        Exit Sub
    End If

    area = lado1 * lado2
    perimetro = 2 * (lado1 + lado2)

    MsgBox "Resultados para el Rectangulo:" & vbCrLf & _
           "Area: " & area & vbCrLf & _
           "Perimetro: " & perimetro, vbInformation, "Resultado"
End Sub

' Funcion para validar entradas numericas
Function ValidarEntrada(valor)
    If IsNumeric(valor) And CDbl(valor) > 0 Then
        ValidarEntrada = CDbl(valor)
    Else
        Err.Raise 513, "ValidarEntrada", "Entrada no valida."
    End If
End Function

' Ejecutar el programa
Main