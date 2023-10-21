VERSION 5.00
Begin VB.Form frmDialog01 
   Caption         =   "Gradient types"
   ClientHeight    =   4095
   ClientLeft      =   3780
   ClientTop       =   1440
   ClientWidth     =   5265
   Icon            =   "frmDialog01.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   4095
   ScaleWidth      =   5265
   Begin VB.Frame Frame3 
      Caption         =   "Combinations"
      Height          =   1380
      Left            =   210
      TabIndex        =   7
      Top             =   2625
      Width           =   2955
      Begin VB.PictureBox picMix 
         Height          =   855
         Left            =   1575
         ScaleHeight     =   795
         ScaleWidth      =   1005
         TabIndex        =   11
         Top             =   315
         Width           =   1065
      End
      Begin VB.CheckBox chkBlue 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FF0000&
         Height          =   225
         Left            =   630
         TabIndex        =   10
         Top             =   945
         Width           =   645
      End
      Begin VB.CheckBox chkGreen 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00008000&
         Height          =   225
         Left            =   630
         TabIndex        =   9
         Top             =   630
         Width           =   645
      End
      Begin VB.CheckBox chkRed 
         Alignment       =   1  'Right Justify
         BackColor       =   &H000000FF&
         Height          =   225
         Left            =   630
         TabIndex        =   8
         Top             =   315
         Width           =   645
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Gradients"
      Height          =   2430
      Left            =   3255
      TabIndex        =   3
      Top             =   105
      Width           =   1905
      Begin VB.OptionButton optGradient03 
         Caption         =   "Gradient 0&3"
         Height          =   330
         Left            =   210
         TabIndex        =   6
         Top             =   1155
         Width           =   1485
      End
      Begin VB.OptionButton optGradient02 
         Caption         =   "Gradient 0&2"
         Height          =   330
         Left            =   210
         TabIndex        =   5
         Top             =   735
         Width           =   1485
      End
      Begin VB.OptionButton optGradient01 
         Caption         =   "Gradient 0&1"
         Height          =   330
         Left            =   210
         TabIndex        =   4
         Top             =   315
         Width           =   1485
      End
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Can&cel"
      Height          =   435
      Left            =   3885
      MouseIcon       =   "frmDialog01.frx":030A
      MousePointer    =   99  'Custom
      TabIndex        =   2
      Top             =   3570
      Width           =   1275
   End
   Begin VB.CommandButton cmdApply 
      Caption         =   "Ap&ply"
      Height          =   435
      Left            =   3885
      MouseIcon       =   "frmDialog01.frx":045C
      MousePointer    =   99  'Custom
      TabIndex        =   1
      Top             =   2940
      Width           =   1275
   End
   Begin VB.PictureBox Pic1 
      Height          =   2325
      Left            =   210
      ScaleHeight     =   2265
      ScaleWidth      =   2895
      TabIndex        =   0
      Top             =   210
      Width           =   2955
   End
End
Attribute VB_Name = "frmDialog01"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private mGrad As New Gradients
Private mColorPic As Integer
Private mRedComp As Integer
Private mGreenComp As Integer
Private mBlueComp As Integer
Public ChosenGradient As Integer

Public Enum WhatColor
    Red
    Green
    Blue
    RedGreen
    RedBlue
    GreenBlue
    RedGreenBlue
    None
End Enum
Public Enum WhatGradient
    Gradient01
    Gradient02
    Gradient03
End Enum

Private Sub chkBlue_Click()

    If chkBlue.Value = Unchecked Then
        mBlueComp = 0
    Else
        mBlueComp = 255
    End If
    
    picMix.BackColor = RGB(mRedComp, mGreenComp, mBlueComp)
    ApplyGradient
End Sub

Private Sub chkGreen_Click()
    If chkGreen.Value = Unchecked Then
        mGreenComp = 0
    Else
        mGreenComp = 255
    End If
    
    picMix.BackColor = RGB(mRedComp, mGreenComp, mBlueComp)
    ApplyGradient

End Sub

Private Sub chkRed_Click()
    If chkRed.Value = Unchecked Then
        mRedComp = 0
    Else
        mRedComp = 255
    End If
    
   picMix.BackColor = RGB(mRedComp, mGreenComp, mBlueComp)
    ApplyGradient

End Sub

Private Sub cmdApply_Click()

    Select Case ChosenGradient
        Case WhatGradient.Gradient01
            mGrad.Gradient01 frmMain, mColorPic, orientation.Vertical
        Case WhatGradient.Gradient02
            mGrad.Gradient02 frmMain, mColorPic
        Case WhatGradient.Gradient03
            mGrad.Gradient01 frmMain, mColorPic, orientation.Horizontal
    End Select
    
    frmMain.mWhatGradient = ChosenGradient
    frmMain.mWhatColor = mColorPic
    
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyEscape
Unload Me

End Select
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set mGrad = Nothing
End Sub


Private Sub optGradient01_Click()
    ChosenGradient = WhatGradient.Gradient01
    ApplyGradient
End Sub

Private Sub optGradient02_Click()
    ChosenGradient = WhatGradient.Gradient02
    ApplyGradient
End Sub

Private Sub optGradient03_Click()
    ChosenGradient = WhatGradient.Gradient03
    ApplyGradient
End Sub

Private Sub Form_Load()
    mColorPic = WhatColor.Blue
    picMix.BackColor = RGB(0, 0, 255)
    mRedComp = 0
    mGreenComp = 0
    mBlueComp = 0
    chkBlue.Value = Checked
    optGradient01.Value = True
    ApplyGradient
End Sub

Private Sub ApplyGradient()

    If mRedComp = 0 And mGreenComp = 0 And mBlueComp = 0 Then
        mColorPic = WhatColor.None
    ElseIf mRedComp = 255 And mGreenComp = 255 And mBlueComp = 255 Then
        mColorPic = WhatColor.RedGreenBlue
    ElseIf mRedComp = 255 And mGreenComp = 0 And mBlueComp = 0 Then
        mColorPic = WhatColor.Red
    ElseIf mRedComp = 0 And mGreenComp = 255 And mBlueComp = 0 Then
        mColorPic = WhatColor.Green
    ElseIf mRedComp = 0 And mGreenComp = 0 And mBlueComp = 255 Then
        mColorPic = WhatColor.Blue
    ElseIf mRedComp = 255 And mGreenComp = 255 And mBlueComp = 0 Then
        mColorPic = WhatColor.RedGreen
    ElseIf mRedComp = 255 And mGreenComp = 0 And mBlueComp = 255 Then
        mColorPic = WhatColor.RedBlue
    ElseIf mRedComp = 0 And mGreenComp = 255 And mBlueComp = 255 Then
        mColorPic = WhatColor.GreenBlue
    End If
    
    Select Case ChosenGradient
        Case WhatGradient.Gradient01
            mGrad.Gradient01 Pic1, mColorPic, orientation.Vertical
        Case WhatGradient.Gradient02
            mGrad.Gradient02 Pic1, mColorPic
        Case WhatGradient.Gradient03
            mGrad.Gradient01 Pic1, mColorPic, orientation.Horizontal
    End Select
End Sub
