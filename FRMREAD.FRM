VERSION 5.00
Begin VB.Form frmread 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   ClientHeight    =   5295
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6990
   LinkTopic       =   "Form4"
   ScaleHeight     =   5295
   ScaleWidth      =   6990
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BorderColor     =   &H000000FF&
      BorderStyle     =   6  'Inside Solid
      Height          =   5055
      Left            =   120
      Top             =   120
      Width           =   6735
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00FF0000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   " "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   1
      Left            =   240
      TabIndex        =   4
      Top             =   240
      Width           =   6495
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00FF0000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   " "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   2
      Left            =   240
      TabIndex        =   3
      Top             =   1230
      Width           =   6495
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00FF0000&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   3
      Left            =   240
      TabIndex        =   2
      Top             =   2220
      Width           =   6495
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00FF0000&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   4
      Left            =   240
      TabIndex        =   1
      Top             =   3210
      Width           =   6495
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00FF0000&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   5
      Left            =   240
      TabIndex        =   0
      Top             =   4200
      Width           =   6495
   End
End
Attribute VB_Name = "frmread"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)



Select Case KeyCode
Case vbKeyEscape
Unload frmread

End Select


End Sub


Private Sub Form_Load()

Label1(1).Caption = "From this Tutorial Foundation and Intermediate Level Students must be benifited and their foundation will be very strong"
Label1(2).Caption = "Those students learning Computer or in software Proffesion must be good in English and Math.That's why in the next CD I am going  to include some important English and Math Lessons"
Label1(3).Caption = "Those topics I can not include in this CD,you will get in another CD.After that you will be master in Ms-Office."
Label1(4).Caption = "After Ms-office tutorial,you will also get c,c++,oracle,vb,English for computer tutorial very soon"
Label1(5).Caption = "Keyboard shortcuts can save time and the effort of switching from the keyboard to the mouse to execute simple commands.That's why I also include a large Collection of Short-cut keys ."
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
For i = 1 To 5
Label1(i).BackColor = vbBlue
Next



End Sub

Private Sub Label1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
'Dim i As Integer


Select Case Index

Case 1
Label1(1).BackColor = vbWhite
Case 2
Label1(2).BackColor = vbWhite

Case 3
Label1(3).BackColor = vbWhite
Case 4
Label1(4).BackColor = vbWhite
Case 5
Label1(5).BackColor = vbWhite

End Select

End Sub

