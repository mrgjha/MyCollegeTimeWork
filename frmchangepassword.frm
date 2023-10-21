VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frmchangepassword 
   BackColor       =   &H00C0C0C0&
   Caption         =   "CHANGE PASSWORD"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6450
   Icon            =   "frmchangepassword.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   6450
   Begin VB.TextBox txtconfirmpassword 
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
      ForeColor       =   &H00FF0000&
      Height          =   390
      IMEMode         =   3  'DISABLE
      Left            =   4080
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   1560
      Width           =   2175
   End
   Begin VB.TextBox txtnewpassword 
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
      ForeColor       =   &H00FF0000&
      Height          =   390
      IMEMode         =   3  'DISABLE
      Left            =   4080
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   840
      Width           =   2175
   End
   Begin VB.CommandButton cmdlogin 
      BackColor       =   &H000080FF&
      Caption         =   "&SUBMIT"
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
      Left            =   4920
      MouseIcon       =   "frmchangepassword.frx":030A
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2280
      Width           =   1335
   End
   Begin VB.TextBox txtoldpassword 
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
      ForeColor       =   &H00FF0000&
      Height          =   390
      IMEMode         =   3  'DISABLE
      Left            =   4080
      PasswordChar    =   "*"
      TabIndex        =   0
      Top             =   120
      Width           =   2175
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   120
      Top             =   0
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
   Begin VB.Shape Shape1 
      Height          =   375
      Left            =   960
      Top             =   120
      Width           =   2775
   End
   Begin VB.Shape Shape2 
      Height          =   375
      Left            =   960
      Top             =   840
      Width           =   2775
   End
   Begin VB.Shape Shape3 
      Height          =   375
      Left            =   960
      Top             =   1560
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackColor       =   &H00808080&
      Height          =   375
      Left            =   4800
      TabIndex        =   4
      Top             =   2400
      Width           =   1455
   End
   Begin VB.Label Label1 
      BackColor       =   &H000080FF&
      Caption         =   "CONFIRM PASSWORD:"
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
      Index           =   2
      Left            =   960
      TabIndex        =   5
      Top             =   1560
      Width           =   2775
   End
   Begin VB.Label Label1 
      BackColor       =   &H000080FF&
      Caption         =   "NEW PASSWORD:"
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
      Index           =   0
      Left            =   960
      TabIndex        =   6
      Top             =   840
      Width           =   2775
   End
   Begin VB.Label Label1 
      BackColor       =   &H000080FF&
      Caption         =   "OLD PASSWORD:"
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
      Left            =   960
      TabIndex        =   7
      Top             =   120
      Width           =   2775
   End
   Begin VB.Label Label3 
      BackColor       =   &H00808080&
      Height          =   495
      Left            =   840
      TabIndex        =   8
      Top             =   240
      Width           =   2895
   End
   Begin VB.Label Label4 
      BackColor       =   &H00808080&
      Height          =   375
      Left            =   840
      TabIndex        =   9
      Top             =   1080
      Width           =   2895
   End
   Begin VB.Label Label5 
      BackColor       =   &H00808080&
      Height          =   375
      Left            =   840
      TabIndex        =   10
      Top             =   1800
      Width           =   2895
   End
End
Attribute VB_Name = "frmchangepassword"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdlogin_Click()
If txtoldpassword.Text = "" Or txtnewpassword.Text = "" Or txtconfirmpassword.Text = "" Then


Load Frmmessage
Frmmessage.Show
Frmmessage.Label1.Caption = "fields can't be empty"
txtoldpassword.SetFocus



Exit Sub

End If


Adodc1.Refresh
On Error Resume Next
Adodc1.Recordset.MoveFirst



If Adodc1.Recordset.Fields(1) = txtoldpassword.Text Then



If txtnewpassword.Text = txtconfirmpassword.Text Then
Adodc1.Recordset.Fields(1) = txtnewpassword.Text
Adodc1.Recordset.Update

txtoldpassword.Text = ""
txtnewpassword.Text = ""
txtconfirmpassword.Text = ""

Load Frmmessage
Frmmessage.Show
Frmmessage.Label1.Caption = "password changed successfully"



Else

Load Frmmessage
Frmmessage.Show
Frmmessage.Label1.Caption = "something is entered incorrectly"

txtoldpassword.Text = ""
txtnewpassword.Text = ""
txtconfirmpassword.Text = ""
txtoldpassword.SetFocus
Exit Sub
End If


Else

Load Frmmessage
Frmmessage.Show
Frmmessage.Label1.Caption = "Incorrect old password"



txtoldpassword.Text = ""

txtoldpassword.SetFocus
End If

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyEscape
Unload frmchangepassword


End Select
End Sub

Private Sub Form_Load()
Me.Width = 7990
Me.Height = 3600
End Sub

Private Sub txtconfirmpassword_LostFocus()
txtconfirmpassword.Text = LCase(txtconfirmpassword.Text)
End Sub

Private Sub txtnewpassword_LostFocus()
txtnewpassword.Text = LCase(txtnewpassword.Text)
End Sub



Private Sub txtoldpassword_LostFocus()
txtoldpassword.Text = LCase(txtoldpassword.Text)
End Sub
