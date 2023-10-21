VERSION 5.00
Begin VB.Form frmbye 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5970
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   5970
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "No"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   2760
      MouseIcon       =   "frmbye.frx":0000
      MousePointer    =   99  'Custom
      TabIndex        =   2
      Top             =   1200
      Width           =   975
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Yes"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   375
      Left            =   1680
      MouseIcon       =   "frmbye.frx":030A
      MousePointer    =   99  'Custom
      TabIndex        =   1
      Top             =   1200
      Width           =   855
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Are you sure you wish to go through this?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   720
      Width           =   5415
   End
End
Attribute VB_Name = "frmbye"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Declare Function PlaySound Lib "winmm.dll" Alias "PlaySoundA" (ByVal lpszName As String, ByVal hModule As Long, ByVal dwFlags As Long) As Long
Private Const SND_FILENAME = &H20000     '  name is a file name
Private Const SND_ASYNC = &H1         '  play asynchronously
Private Const SND_SYNC = &H0

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyEscape
Unload frmbye
Case vbKeyY
Label2_Click
Case vbKeyN

Label3_Click

End Select
End Sub

Private Sub Form_Load()
On Error GoTo err



Label1.Move Screen.Width / 2 - frmbye.Width / 2, Screen.Height / 2 - frmbye.Height / 2
Label2.Move (Screen.Width / 2 - frmbye.Width / 2) + 1000, (Screen.Height / 2 - frmbye.Height / 2) + 1000
Label3.Move (Screen.Width / 2 - frmbye.Width / 2) + 3000, (Screen.Height / 2 - frmbye.Height / 2) + 1000

Exit Sub
err:
MsgBox err.Description

End Sub

Private Sub Label2_Click()

SC
Unload frmbye



End Sub

Private Sub Label3_Click()
Unload frmbye

SC

Load Frmglobe

Frmglobe.Show


End Sub

Private Sub SC()

PlaySound App.Path & "\Aquarium Maximize.wav", 0, SND_SYNC


End Sub
