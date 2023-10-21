VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frmsecurity 
   BackColor       =   &H00C0C0C0&
   Caption         =   "SECURITY"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   Icon            =   "frmsecurity.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   0
      Top             =   120
   End
   Begin VB.CommandButton cmdchangepassword 
      BackColor       =   &H000080FF&
      Caption         =   "CHANGE &PASSWORD"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1680
      MouseIcon       =   "frmsecurity.frx":030A
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2400
      Width           =   2655
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   390
      Index           =   0
      Left            =   1800
      TabIndex        =   0
      Top             =   600
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   390
      IMEMode         =   3  'DISABLE
      Index           =   1
      Left            =   1800
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   1200
      Width           =   2535
   End
   Begin VB.CommandButton cmdlogin 
      BackColor       =   &H000080FF&
      Caption         =   "&LOGIN"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      MaskColor       =   &H000000FF&
      MouseIcon       =   "frmsecurity.frx":045C
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton cmdcancel 
      BackColor       =   &H000080FF&
      Caption         =   "&CANCEL"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3000
      MouseIcon       =   "frmsecurity.frx":05AE
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1800
      Width           =   1335
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   120
      Top             =   120
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=pass.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=pass.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from security"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.Label Label4 
      BackColor       =   &H00808080&
      Height          =   375
      Left            =   1560
      TabIndex        =   9
      Top             =   2520
      Width           =   2775
   End
   Begin VB.Label Label3 
      BackColor       =   &H00808080&
      Height          =   375
      Left            =   2880
      TabIndex        =   8
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackColor       =   &H00808080&
      Height          =   375
      Left            =   120
      TabIndex        =   7
      Top             =   1920
      Width           =   1575
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00404040&
      FillColor       =   &H000000FF&
      Height          =   375
      Left            =   240
      Shape           =   4  'Rounded Rectangle
      Top             =   1200
      Width           =   1455
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00404040&
      FillColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   240
      Shape           =   4  'Rounded Rectangle
      Top             =   600
      Width           =   1455
   End
   Begin VB.Label Label1 
      BackColor       =   &H000080FF&
      Caption         =   "UID:"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000040&
      Height          =   375
      Index           =   0
      Left            =   240
      TabIndex        =   5
      Top             =   600
      Width           =   1455
   End
   Begin VB.Label Label1 
      BackColor       =   &H000080FF&
      Caption         =   "PASSWORD:"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   1
      Left            =   240
      TabIndex        =   4
      Top             =   1200
      Width           =   1455
   End
   Begin VB.Label Label5 
      BackColor       =   &H00808080&
      Height          =   375
      Left            =   120
      TabIndex        =   10
      Top             =   720
      Width           =   1575
   End
   Begin VB.Label Label6 
      BackColor       =   &H00808080&
      Height          =   375
      Left            =   120
      TabIndex        =   11
      Top             =   1320
      Width           =   1575
   End
End
Attribute VB_Name = "frmsecurity"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim l As Integer
Dim frnname As String

Private Sub cmdCancel_Click()
On Error Resume Next
Unload frmsecurity


End
End Sub

Private Sub cmdchangepassword_Click()
Load frmchangepassword

frmchangepassword.Show

End Sub

Private Sub cmdlogin_Click()

Adodc1.Refresh
On Error Resume Next
Adodc1.Recordset.MoveFirst

If Adodc1.Recordset.Fields(0) = Text1(0).Text And Adodc1.Recordset.Fields(1) = Text1(1).Text Then
Text1(0).Text = ""
Text1(1).Text = ""

Unload frmMain
Unload frmDialog01
Unload frmabout
Unload frmread
Unload frmsecurity
Unload Frmmessage

Load Frmglobe
Frmglobe.Show

Else
Load Frmmessage
Frmmessage.Show
Frmmessage.Move 0, 600

Frmmessage.Label1.Caption = "incorrect login..try again"

'MsgBox "incorrect login..try again"
Text1(0).Text = ""
Text1(1).Text = ""

Text1(0).SetFocus




SendKeys "{Home}+{End}"
    




End If



End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyEscape
Unload frmsecurity

End Select
End Sub

Private Sub Text1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
Text1(0).ForeColor = vbRed
Text1(1).ForeColor = vbBlue

End Sub

Private Sub Text1_LostFocus(Index As Integer)

For i = 0 To 1
Text1(i).Text = LCase(Text1(i).Text)
Next

End Sub

Private Sub Timer1_Timer()

frmname = " SECURITY                                  "
If l > 40 Then l = 1 Else l = l + 1
frmsecurity.Caption = Left(frmname, l)

End Sub
