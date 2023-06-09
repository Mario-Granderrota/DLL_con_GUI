Global _textoBoton1.s, _textoBoton2.s, _textoBoton3.s, _textoBoton4.s, _textoBoton5.s
Global _textoBoton6.s, _textoBoton7.s, _textoBoton8.s, _textoBoton9.s, _textoBoton10.s
Global _numeroBotones.i

Procedure.i ContarBarras(_texto.s)
    Protected _inicio.i = 1
    Protected _fin.i
    Protected _longitud.i = Len(_texto)
    
    ; Si el texto comienza con una barra y la segunda posición no es una barra, eliminar la primera barra.
    If Left(_texto, 1) = "/" And Mid(_texto, 2, 1) <> "/" 
        _texto = Mid(_texto, 2)
    ElseIf Left(_texto, 2) = "//" ; Si comienza con "//", reemplazar con "X/"
        _texto = "X/" + Mid(_texto, 3)
    EndIf
    
    ; Sustituir "//" por "/X/" en un bucle para reemplazar todas las instancias
    While FindString(_texto, "//") <> 0
        _texto = ReplaceString(_texto, "//", "/X/")
    Wend
    
    ; Eliminar barra al inicio y al final si existe
    If Left(_texto, 1) = "/" : _texto = Right(_texto, _longitud - 1) : EndIf
    _longitud = Len(_texto)
    If Right(_texto, 1) = "/" : _texto = Left(_texto, _longitud - 1) : EndIf
    
    ; Dividir texto y asignar a variables de botones
    _numeroBotones = 0
    Repeat
        _fin = FindString(_texto, "/", _inicio)
        If _fin = 0
            _fin = Len(_texto) + 1
        EndIf
        _numeroBotones = _numeroBotones + 1
        Select _numeroBotones
            Case 1
                _textoBoton1 = Mid(_texto, _inicio, _fin - _inicio)
            Case 2
                _textoBoton2 = Mid(_texto, _inicio, _fin - _inicio)
            Case 3
                _textoBoton3 = Mid(_texto, _inicio, _fin - _inicio)
            Case 4
                _textoBoton4 = Mid(_texto, _inicio, _fin - _inicio)
            Case 5
                _textoBoton5 = Mid(_texto, _inicio, _fin - _inicio)
            Case 6
                _textoBoton6 = Mid(_texto, _inicio, _fin - _inicio)
            Case 7
                _textoBoton7 = Mid(_texto, _inicio, _fin - _inicio)
            Case 8
                _textoBoton8 = Mid(_texto, _inicio, _fin - _inicio)
            Case 9
                _textoBoton9 = Mid(_texto, _inicio, _fin - _inicio)
            Case 10
                _textoBoton10 = Mid(_texto, _inicio, _fin - _inicio)
        EndSelect
        _inicio = _fin + 1
    Until _inicio > Len(_texto)
    
    ProcedureReturn _numeroBotones
EndProcedure
