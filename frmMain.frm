VERSION 5.00
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Login The Tutorial"
   ClientHeight    =   5580
   ClientLeft      =   1740
   ClientTop       =   1800
   ClientWidth     =   8805
   FillStyle       =   0  'Solid
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5580
   ScaleWidth      =   8805
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   0
      Top             =   3600
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnulogin 
         Caption         =   "Login Tutorial"
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnuGradients 
      Caption         =   "Gradients"
      Begin VB.Menu mnuGradientsTypes 
         Caption         =   "Types..."
      End
   End
   Begin VB.Menu mnuabout 
      Caption         =   "About"
   End
   Begin VB.Menu mnuread 
      Caption         =   "Read This"
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim l As Integer
Dim frmname As String




Private mGrad As New Gradients
Public mWhatGradient As Integer
Public mWhatColor As Integer


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyEscape
Unload frmMain
End Select

End Sub

Private Sub Form_Load()



    mWhatGradient = WhatGradient.Gradient02
    mWhatColor = WhatColor.Blue
    mGrad.Gradient02 Me, mWhatColor
    
   
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
Unload Frmhelp
Unload frmabout


Unload frmDialog01
Unload frmread

End Sub

Private Sub Form_Resize()
    Select Case mWhatGradient
        Case WhatGradient.Gradient01
            mGrad.Gradient01 Me, mWhatColor, orientation.Vertical
        Case WhatGradient.Gradient02
            mGrad.Gradient02 Me, mWhatColor
        Case WhatGradient.Gradient03
            mGrad.Gradient01 Me, mWhatColor, orientation.Horizontal
    End Select
End Sub

Private Sub mnuabout_Click()
Load frmabout

frmabout.Show
frmabout.Move Screen.Width / 2 - frmabout.Width / 2, Screen.Height / 2 - frmabout.Height / 2

End Sub

Private Sub mnuFileExit_Click()
    Unload frmabout
    
    Unload frmchangepassword
    Unload frmread
    Unload frmDialog01
    
    Unload frmsecurity
    
    Unload Me
   
End Sub

Private Sub mnuGradientsTypes_Click()
    frmDialog01.ChosenGradient = WhatGradient.Gradient01
    frmDialog01.Show
    frmDialog01.Move Screen.Width / 2 - frmDialog01.Width / 2, Screen.Height / 2 - frmDialog01.Height / 2
End Sub



Private Sub mnulogin_Click()
Load frmsecurity
frmsecurity.Show
frmsecurity.Move Screen.Width / 2 - frmsecurity.Width / 2, Screen.Height / 2 - frmsecurity.Height / 2
End Sub

Private Sub mnuread_Click()
Load frmread
frmread.Show
frmread.Move Screen.Width / 2 - frmread.Width / 2, Screen.Height / 2 - frmread.Height / 2
End Sub

Private Sub Timer1_Timer()

frmname = "Login The Ms-Office Tutorial Developed by Gyanendra Jha "
If l > 60 Then l = 1 Else l = l + 1
frmMain.Caption = Left(frmname, l)

End Sub
