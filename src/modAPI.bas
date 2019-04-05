Attribute VB_Name = "modAPI"
Option Explicit

Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Const SWP_NOMOVE = &H2
Const SWP_NOSIZE = &H1
Private Const GWL_EXSTYLE = (-20)
Private Const WS_EX_CLIENTEDGE = &H200
Private Const WS_EX_STATICEDGE = &H20000
Private Const SWP_FRAMECHANGED = &H20
Private Const SWP_NOACTIVATE = &H10
Private Const SWP_NOZORDER = &H4
Private Const SWP_DRAWFRAME = SWP_FRAMECHANGED
Private Const SWP_FLAGS = SWP_NOZORDER Or SWP_NOSIZE Or SWP_NOMOVE Or SWP_DRAWFRAME

''''''''''''''''''''''''''''''''''''''''''''''''''''''
' Useage: Call FlatBorder(OBJECT.hwnd)
''''''''''''''''''''''''''''''''''''''''''''''''''''''
Public Sub FlatBorder(ByVal hwnd As Long)
Dim TFlat As Long
  TFlat = GetWindowLong(hwnd, GWL_EXSTYLE)
  TFlat = TFlat And Not WS_EX_CLIENTEDGE Or WS_EX_STATICEDGE
  SetWindowLong hwnd, GWL_EXSTYLE, TFlat
  SetWindowPos hwnd, 0, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_NOZORDER Or SWP_FRAMECHANGED Or SWP_NOSIZE Or SWP_NOMOVE
End Sub
