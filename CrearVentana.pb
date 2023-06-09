CompilerIf #PB_Compiler_Unicode
  EnableExplicit
  UsePNGImageDecoder()
CompilerEndIf

ProcedureDLL.i CrearVentana(_numeroBotones.i, _textoBoton1.s, _textoBoton2.s, _textoBoton3.s, _textoBoton4.s, _textoBoton5.s, _textoBoton6.s, _textoBoton7.s, _textoBoton8.s, _textoBoton9.s, _textoBoton10.s)
    Protected _ventana
    Protected _boton1, _boton2, _boton3, _boton4, _boton5, _boton6, _boton7, _boton8, _boton9, _boton10
    Protected _i.i ; Declaramos explícitamente la variable _i

    _ventana = OpenWindow(#PB_Any, 200, 200, 200, _numeroBotones*30 + 40, "Ventana con botones", #PB_Window_SystemMenu | #PB_Window_ScreenCentered)

    For _i = 0 To _numeroBotones - 1
        Select _i
            Case 0: _boton1 = ButtonGadget(#PB_Any, 20, 20 + (_i * 30), 160, 20, _textoBoton1)
            Case 1: _boton2 = ButtonGadget(#PB_Any, 20, 20 + (_i * 30), 160, 20, _textoBoton2)
            Case 2: _boton3 = ButtonGadget(#PB_Any, 20, 20 + (_i * 30), 160, 20, _textoBoton3)
            Case 3: _boton4 = ButtonGadget(#PB_Any, 20, 20 + (_i * 30), 160, 20, _textoBoton4)
            Case 4: _boton5 = ButtonGadget(#PB_Any, 20, 20 + (_i * 30), 160, 20, _textoBoton5)
            Case 5: _boton6 = ButtonGadget(#PB_Any, 20, 20 + (_i * 30), 160, 20, _textoBoton6)
            Case 6: _boton7 = ButtonGadget(#PB_Any, 20, 20 + (_i * 30), 160, 20, _textoBoton7)
            Case 7: _boton8 = ButtonGadget(#PB_Any, 20, 20 + (_i * 30), 160, 20, _textoBoton8)
            Case 8: _boton9 = ButtonGadget(#PB_Any, 20, 20 + (_i * 30), 160, 20, _textoBoton9)
            Case 9: _boton10 = ButtonGadget(#PB_Any, 20, 20 + (_i * 30), 160, 20, _textoBoton10)
        EndSelect
    Next _i

    Repeat
        Select WaitWindowEvent()
            Case #PB_Event_CloseWindow
                CloseWindow(_ventana)
                ProcedureReturn 1
                
            Case #PB_Event_Gadget
                If EventGadget() = _boton1 : CloseWindow(_ventana) : ProcedureReturn 2 : EndIf
                If EventGadget() = _boton2 : CloseWindow(_ventana) : ProcedureReturn 3 : EndIf
                If EventGadget() = _boton3 : CloseWindow(_ventana) : ProcedureReturn 4 : EndIf
                If EventGadget() = _boton4 : CloseWindow(_ventana) : ProcedureReturn 5 : EndIf
                If EventGadget() = _boton5 : CloseWindow(_ventana) : ProcedureReturn 6 : EndIf
                If EventGadget() = _boton6 : CloseWindow(_ventana) : ProcedureReturn 7 : EndIf
                If EventGadget() = _boton7 : CloseWindow(_ventana) : ProcedureReturn 8 : EndIf
                If EventGadget() = _boton8 : CloseWindow(_ventana) : ProcedureReturn 9 : EndIf
                If EventGadget() = _boton9 : CloseWindow(_ventana) : ProcedureReturn 10 : EndIf
                If EventGadget() = _boton10 : CloseWindow(_ventana) : ProcedureReturn 11 : EndIf
        EndSelect
    ForEver
EndProcedure
