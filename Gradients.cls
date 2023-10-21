VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Gradients"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Option Explicit

Public Enum orientation
    Horizontal
    Vertical
End Enum

Public Sub Gradient01(Obj As Object, color As Integer, orient As Integer)
    ' This gradient is formed for vertical
    ' or horizontal rectangles drawn with the line method.
    ' The color varies from black at the edges to the one selected
    ' by the user at the centre
    Obj.ScaleMode = vbPixels
    Obj.AutoRedraw = True
    Dim Xo As Long
    Dim Yo As Long
    
    Dim x As Long, y As Long
    If orient = orientation.Vertical Then
        x = Obj.ScaleWidth / 255    ' The width of the strip
        Obj.ScaleWidth = 255 * x
        y = Obj.ScaleHeight
        Xo = x
        Yo = 0
    ElseIf orient = orientation.Horizontal Then
        y = Obj.ScaleHeight / 255
        Obj.ScaleHeight = 255 * y
        x = Obj.ScaleWidth
        Xo = 0
        Yo = y
    End If
    


    Dim i As Integer
    Dim j As Integer
    ' Draw the vertical or horizontal rectangles
    ' at the left or top half  of the canvas width.
    For i = 0 To 127
        Obj.CurrentX = i * Xo
        Obj.CurrentY = i * Yo
        Select Case color
            Case WhatColor.Red
                Obj.Line -Step(x, y), RGB(i, 0, 0), BF
            Case WhatColor.Green
                Obj.Line -Step(x, y), RGB(0, i, 0), BF
            Case WhatColor.Blue
                Obj.Line -Step(x, y), RGB(0, 0, i), BF
            Case WhatColor.RedGreen
                Obj.Line -Step(x, y), RGB(i, i, 0), BF
            Case WhatColor.RedBlue
                Obj.Line -Step(x, y), RGB(i, 0, i), BF
            Case WhatColor.GreenBlue
                Obj.Line -Step(x, y), RGB(0, i, i), BF
            Case WhatColor.RedGreenBlue
                Obj.Line -Step(x, y), RGB(i, i, i), BF
            Case WhatColor.None
                Obj.Line -Step(x, y), RGB(0, 0, 0), BF
        End Select
    Next i
    j = 0
    ' Complete the right or bottom half of the canvas.
    For i = 127 To 254
        Obj.CurrentX = i * Xo
        Obj.CurrentY = i * Yo
   
        Select Case color
            Case WhatColor.Red
                Obj.Line -Step(x, y), RGB((127 - j), 0, 0), BF
                j = j + 1
            Case WhatColor.Green
                Obj.Line -Step(x, y), RGB(0, (127 - j), 0), BF
                j = j + 1
            Case WhatColor.Blue
                Obj.Line -Step(x, y), RGB(0, 0, (127 - j)), BF
                j = j + 1
            Case WhatColor.RedGreen
                Obj.Line -Step(x, y), RGB((127 - j), (127 - j), 0), BF
                j = j + 1
            Case WhatColor.RedBlue
                Obj.Line -Step(x, y), RGB((127 - j), 0, (127 - j)), BF
                j = j + 1
            Case WhatColor.GreenBlue
                Obj.Line -Step(x, y), RGB(0, (127 - j), (127 - j)), BF
                j = j + 1
            Case WhatColor.RedGreenBlue
                Obj.Line -Step(x, y), RGB((127 - j), (127 - j), (127 - j)), BF
                j = j + 1
            Case WhatColor.None
                Obj.Line -Step(x, y), RGB(0, 0, 0), BF
                j = j + 1
        End Select
            
    Next i

End Sub

Public Sub Gradient02(Obj As Object, color As Integer)
    ' This gradient is formed by vertical rectangles drawn
    ' from left to right, and varying color from black to
    ' the one chosen by the user.

    Obj.ScaleMode = vbPixels
    Obj.AutoRedraw = True

    Dim a As Integer
    a = Obj.ScaleWidth / 255
    Obj.ScaleWidth = a * 255

    Dim i As Integer
    Dim j As Integer
    For i = 0 To 254
        Obj.CurrentX = i * a
        Obj.CurrentY = 0
        Select Case color
            Case WhatColor.Red
                Obj.Line -Step(a, Obj.ScaleHeight), RGB(i, 0, 0), BF
            Case WhatColor.Green
                Obj.Line -Step(a, Obj.ScaleHeight), RGB(0, i, 0), BF
            Case WhatColor.Blue
                Obj.Line -Step(a, Obj.ScaleHeight), RGB(0, 0, i), BF
            Case WhatColor.RedGreen
                Obj.Line -Step(a, Obj.ScaleHeight), RGB(i, i, 0), BF
            Case WhatColor.RedBlue
                Obj.Line -Step(a, Obj.ScaleHeight), RGB(i, 0, i), BF
            Case WhatColor.GreenBlue
                Obj.Line -Step(a, Obj.ScaleHeight), RGB(0, i, i), BF
            Case WhatColor.RedGreenBlue
                Obj.Line -Step(a, Obj.ScaleHeight), RGB(i, i, i), BF
            Case WhatColor.None
                Obj.Line -Step(a, Obj.ScaleHeight), RGB(0, 0, 0), BF
        End Select
    Next i
End Sub




