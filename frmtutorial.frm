VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Object = "{F5BE8BC2-7DE6-11D0-91FE-00C04FD701A5}#2.0#0"; "agentctl.dll"
Begin VB.Form Frmtutorial 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00808080&
   BorderStyle     =   0  'None
   ClientHeight    =   8730
   ClientLeft      =   120
   ClientTop       =   120
   ClientWidth     =   11490
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   12
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H000000C0&
   Icon            =   "frmtutorial.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "frmtutorial.frx":0442
   MousePointer    =   99  'Custom
   ScaleHeight     =   8730
   ScaleWidth      =   11490
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MCI.MMControl mmc 
      Height          =   330
      Left            =   600
      TabIndex        =   10
      Top             =   600
      Visible         =   0   'False
      Width           =   3540
      _ExtentX        =   6244
      _ExtentY        =   582
      _Version        =   393216
      DeviceType      =   ""
      FileName        =   "G:\gp\I1.WAV"
   End
   Begin VB.Timer Timer1 
      Interval        =   300
      Left            =   0
      Top             =   1080
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   8775
      Left            =   1200
      MouseIcon       =   "frmtutorial.frx":0884
      TabIndex        =   0
      Top             =   0
      Width           =   9855
      Begin VB.Image Image9 
         Appearance      =   0  'Flat
         Height          =   285
         Index           =   8
         Left            =   7680
         Picture         =   "frmtutorial.frx":09D6
         Top             =   6960
         Width           =   510
      End
      Begin VB.Image Image1 
         Height          =   435
         Index           =   13
         Left            =   8760
         Picture         =   "frmtutorial.frx":1046
         Top             =   6960
         Width           =   435
      End
      Begin VB.Image Image9 
         Height          =   285
         Index           =   7
         Left            =   5280
         Picture         =   "frmtutorial.frx":1553
         Top             =   6960
         Width           =   510
      End
      Begin VB.Image Image1 
         Height          =   435
         Index           =   12
         Left            =   6360
         Picture         =   "frmtutorial.frx":1BC3
         Top             =   6960
         Width           =   435
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   11
         Left            =   720
         MouseIcon       =   "frmtutorial.frx":20EB
         MousePointer    =   99  'Custom
         Picture         =   "frmtutorial.frx":2F2D
         Top             =   8520
         Width           =   1380
      End
      Begin VB.Shape Shape7 
         BorderColor     =   &H00FF0000&
         Height          =   375
         Left            =   4920
         Top             =   6120
         Width           =   2175
      End
      Begin VB.Shape Shape4 
         BorderColor     =   &H0000FF00&
         Height          =   615
         Left            =   720
         Top             =   4680
         Width           =   3255
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H0000FF00&
         Height          =   615
         Left            =   720
         Top             =   3360
         Width           =   3255
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H0000FF00&
         Height          =   615
         Left            =   720
         Top             =   2160
         Width           =   3255
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H0000FF00&
         BorderColor     =   &H0000FF00&
         Height          =   615
         Left            =   720
         Top             =   960
         Width           =   3255
      End
      Begin VB.Image Image3 
         Height          =   300
         Left            =   4320
         Picture         =   "frmtutorial.frx":4427
         Top             =   6120
         Width           =   300
      End
      Begin VB.Image Image1 
         Height          =   1440
         Index           =   10
         Left            =   8520
         Picture         =   "frmtutorial.frx":530E
         Top             =   2280
         Width           =   1440
      End
      Begin VB.Image Image1 
         Height          =   435
         Index           =   9
         Left            =   3720
         Picture         =   "frmtutorial.frx":67F3
         Top             =   6960
         Width           =   435
      End
      Begin VB.Image Image1 
         Height          =   420
         Index           =   8
         Left            =   1080
         Picture         =   "frmtutorial.frx":6D0B
         Top             =   6960
         Width           =   435
      End
      Begin VB.Image Image9 
         Height          =   285
         Index           =   6
         Left            =   7680
         Picture         =   "frmtutorial.frx":7255
         Top             =   2520
         Width           =   510
      End
      Begin VB.Image Image9 
         Height          =   285
         Index           =   5
         Left            =   2640
         Picture         =   "frmtutorial.frx":78C5
         Top             =   6960
         Width           =   510
      End
      Begin VB.Image Image9 
         Height          =   285
         Index           =   4
         Left            =   240
         Picture         =   "frmtutorial.frx":7F35
         Top             =   6960
         Width           =   510
      End
      Begin VB.Image Image9 
         Height          =   285
         Index           =   3
         Left            =   4320
         Picture         =   "frmtutorial.frx":85A5
         Top             =   4680
         Width           =   510
      End
      Begin VB.Image Image9 
         Height          =   285
         Index           =   2
         Left            =   4320
         Picture         =   "frmtutorial.frx":8C15
         Top             =   3480
         Width           =   510
      End
      Begin VB.Image Image9 
         Height          =   285
         Index           =   1
         Left            =   4320
         Picture         =   "frmtutorial.frx":9285
         Top             =   2280
         Width           =   510
      End
      Begin VB.Image Image9 
         Height          =   285
         Index           =   0
         Left            =   4320
         Picture         =   "frmtutorial.frx":98F5
         Top             =   1080
         Width           =   510
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF00FF&
         Height          =   375
         Index           =   4
         Left            =   4920
         TabIndex        =   5
         Top             =   6120
         Width           =   2205
      End
      Begin VB.Image Image1 
         Height          =   900
         Index           =   7
         Left            =   5640
         Picture         =   "frmtutorial.frx":9F65
         Top             =   4560
         Width           =   900
      End
      Begin VB.Image Image1 
         Height          =   900
         Index           =   6
         Left            =   5640
         Picture         =   "frmtutorial.frx":B316
         Top             =   3240
         Width           =   900
      End
      Begin VB.Image Image1 
         Height          =   900
         Index           =   5
         Left            =   5640
         Picture         =   "frmtutorial.frx":C6C7
         Top             =   2040
         Width           =   900
      End
      Begin VB.Image Image1 
         Height          =   900
         Index           =   4
         Left            =   5640
         Picture         =   "frmtutorial.frx":DA78
         Top             =   960
         Width           =   900
      End
      Begin VB.Image Image1 
         Height          =   435
         Index           =   3
         Left            =   120
         Picture         =   "frmtutorial.frx":EE29
         Top             =   2160
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.Image Image1 
         Height          =   420
         Index           =   2
         Left            =   120
         Picture         =   "frmtutorial.frx":F341
         Top             =   1080
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.Image Image1 
         Height          =   435
         Index           =   1
         Left            =   120
         Picture         =   "frmtutorial.frx":F88B
         Top             =   4800
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.Image Image1 
         Height          =   435
         Index           =   0
         Left            =   120
         Picture         =   "frmtutorial.frx":FD98
         Top             =   3480
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H000000C0&
         Caption         =   "Learn Excel "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   3
         Left            =   720
         TabIndex        =   4
         Top             =   2160
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H000000C0&
         Caption         =   "Learn Word"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   2
         Left            =   720
         TabIndex        =   3
         Top             =   960
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H000000C0&
         Caption         =   "Learn Power Point"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   1
         Left            =   720
         TabIndex        =   2
         Top             =   4680
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H000000C0&
         Caption         =   "Learn Access"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   0
         Left            =   720
         TabIndex        =   1
         Top             =   3360
         Width           =   3255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00808080&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   600
         TabIndex        =   6
         Top             =   1200
         Width           =   3375
      End
      Begin VB.Label Label4 
         BackColor       =   &H00808080&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   600
         TabIndex        =   7
         Top             =   2400
         Width           =   3375
      End
      Begin VB.Label Label5 
         BackColor       =   &H00808080&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   600
         TabIndex        =   8
         Top             =   3600
         Width           =   3375
      End
      Begin VB.Label Label6 
         BackColor       =   &H00808080&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   600
         TabIndex        =   9
         Top             =   4920
         Width           =   3375
      End
   End
   Begin AgentObjectsCtl.Agent Agent1 
      Left            =   480
      Top             =   1800
   End
   Begin VB.Image Image2 
      Height          =   930
      Index           =   2
      Left            =   26760
      Picture         =   "frmtutorial.frx":102C0
      Top             =   3360
      Width           =   1320
   End
   Begin VB.Menu mnuEdit 
      Caption         =   ""
      NegotiatePosition=   1  'Left
      Visible         =   0   'False
      Begin VB.Menu wi 
         Caption         =   "Word Install"
         Index           =   0
      End
      Begin VB.Menu ei 
         Caption         =   "Excel Install"
         Index           =   1
      End
      Begin VB.Menu esk 
         Caption         =   "Ms-Excel Shortcut key"
         Index           =   2
      End
      Begin VB.Menu wsk 
         Caption         =   "Ms-Word Shortcut Key"
         Index           =   3
      End
      Begin VB.Menu pi 
         Caption         =   "Power Point Install"
         Index           =   4
      End
      Begin VB.Menu ai 
         Caption         =   "Access Install"
         Index           =   5
      End
      Begin VB.Menu ti 
         Caption         =   "Total Install"
         Index           =   6
      End
      Begin VB.Menu m 
         Caption         =   "Mute"
         Index           =   7
      End
      Begin VB.Menu Q 
         Caption         =   "Quit"
         Index           =   8
      End
      Begin VB.Menu tkh 
         Caption         =   "Tutorial Keyboard Help"
         Index           =   9
      End
      Begin VB.Menu mr 
         Caption         =   "Mute Release"
         Index           =   10
      End
   End
   Begin VB.Menu rightmenu 
      Caption         =   ""
      Visible         =   0   'False
   End
   Begin VB.Menu mnuBtnContextMenu 
      Caption         =   ""
      Visible         =   0   'False
      Begin VB.Menu mnuBtnWhatsThis 
         Caption         =   "What is this ?"
         Index           =   0
      End
   End
End
Attribute VB_Name = "Frmtutorial"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim y As Integer

Dim l As Integer
Dim str1 As String
Dim bool As Boolean

Dim str2 As String
Private ThisControl As Control
Private Sub cl_Click(Index As Integer)
Unload Frmtutorial
Load Frmglobe
Frmglobe.Show
End Sub

Private Sub ai_Click(Index As Integer)
at
End Sub

Private Sub ei_Click(Index As Integer)
et
End Sub

Private Sub esk_Click(Index As Integer)
khe
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)


Select Case KeyCode
Case vbKeyW
wt
Case vbKeyE
et
Case vbKeyP
pt
Case vbKeyA
at
Case vbKeyZ
tzip
Case vbKeyEscape
Unload Frmtutorial
Case vbKeyF2
khw
Case vbKeyF3
khe
Case vbKeyF4
pptkh
Case vbKeyF5
akh

Case vbKeyM
Mute




Case vbKeyR

muterelease

Case vbKeyS
start




Case vbKeyF1
kh
End Select

End Sub


Private Sub Form_Load()
Agent1.Characters.Load "agent", App.Path & "\merlin.acs"


Frmtutorial.KeyPreview = True





mmc.Command = "open"

mmc.Command = "play"

Set Character = Agent1.Characters("agent")

Character.Speak "Value in Payment Box is Complusory"

'Agent1.Characters.Load "merlin"

Character.Show
Character.MoveTo 450, 450

Character.Play "greet"
Character.Play "read"
Character.Play "write"
Character.Speak "Press F1 for help"



End Sub

Private Sub Form_Resize()
Image1(11).Move Screen.Width / 100, Screen.Height - 1000
Image1(8).Move Screen.Width / 2 - 4000, Screen.Height - 1900
Image1(9).Move Screen.Width / 2 + 5000, Screen.Height - 1900

Image1(12).Move Screen.Width / 2 - 1000, Screen.Height - 3000
Image1(13).Move Screen.Width / 2 + 1000, Screen.Height - 3000





Image1(10).Move Screen.Width / 2 + 3000, Screen.Height / 5


Label1(4).Move Screen.Width / 2 - 900, Screen.Height - 1700
Shape7.Move Screen.Width / 2 - 900, Screen.Height - 1700
Image3.Move Screen.Width / 2 - 903, Screen.Height - 1700
Frame1.Move Screen.Width - Frmtutorial.Width, Frmtutorial.Height - Frmtutorial.Height, Screen.Width - 50, Screen.Height - 350
Image9(4).Move Screen.Width / 2 - 5000, Screen.Height - 1900
'500, Screen.Height - 1900
Image9(5).Move Screen.Width / 2 + 4000, Screen.Height - 1900
'7500, Screen.Height - 1900

'Label8.Move Screen.Width / 7, Screen.Height - 1000
'Shape8.Move Screen.Width / 7, Screen.Height - 1000

'Image1(6).Move Screen.Width / 2 - Image1(6).Width / 2, Screen.Height / 2 - Image1(6).Height / 2


Image9(7).Move Screen.Width / 2 - 2000, Screen.Height - 3000
Image9(8).Move Screen.Width / 2 + 200, Screen.Height - 3000

'Image9(8).Move Screen.Width / 2, Screen.Height / 4




End Sub

Private Sub Form_Unload(Cancel As Integer)



Load frmbye
frmbye.Show
Unload Frmhelp

End Sub

Private Sub Frame1_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
 Unload Frmhelp
 
   End Sub
  



Private Sub Frame1_Mousemove(Button As Integer, Shift As Integer, x As Single, y As Single)
For i = O To 13
Image1(i).Visible = True
Next

For i = O To 8
Image9(i).Visible = True
Next

Image3.Visible = True

End Sub




Private Sub Image1_Click(Index As Integer)
Select Case Index
Case 7
pt
Case 6
at
Case 5
et
Case 8
khw
Case 9
khe
Case 10
tzip
Case 4
wt
Case 10
tzip

Case 11

ex
Case 12

pptkh
Case 13

akh
End Select
End Sub

Private Sub Image1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
If Index = 4 Then
Image9(0).Visible = True
Else
Image9(0).Visible = False
End If
If Index = 5 Then
Image9(1).Visible = True
Else
Image9(1).Visible = False
End If
If Index = 6 Then
Image9(2).Visible = True
Else
Image9(2).Visible = False
End If
If Index = 7 Then
Image9(3).Visible = True
Else
Image9(3).Visible = False
End If
If Index = 8 Then
Image9(4).Visible = True
Else
Image9(4).Visible = False
End If
If Index = 9 Then
Image9(5).Visible = True
Else
Image9(5).Visible = False
End If
If Index = 10 Then
Image9(6).Visible = True
Else
Image9(6).Visible = False
End If


If Index = 12 Then
Image9(7).Visible = True
Else
Image9(7).Visible = False
End If

If Index = 13 Then
Image9(8).Visible = True
Else
Image9(8).Visible = False
End If
End Sub





Private Sub Image9_MouseUp(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)

         Set ThisControl = Image9(Index)
         PopupMenu mnuBtnContextMenu
      
   Set ThisControl = Nothing

End Sub



Private Sub Label1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
If Index = 0 Then
Image1(0).Visible = True
Else
Image1(0).Visible = False
End If
If Index = 1 Then
Image1(1).Visible = True
Else
Image1(1).Visible = False
End If
If Index = 2 Then
Image1(2).Visible = True
Else
Image1(2).Visible = False
End If
If Index = 3 Then
Image1(3).Visible = True
Else
Image1(3).Visible = False
End If
If Index = 4 Then
Image3.Visible = True

Else
Image3.Visible = False

End If
End Sub





Private Sub Label1_MouseUp(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
         Set ThisControl = Label1(Index)
         PopupMenu mnuBtnContextMenu
         Set ThisControl = Nothing

End Sub


Private Sub MMControl1_Done(NotifyCode As Integer)

End Sub

Private Sub mnuBtnWhatsThis_Click(Index As Integer)
ThisControl.ShowWhatsThis
End Sub










Public Sub wt()



RunProgram "wordt.doc"









End Sub

Public Sub et()

RunProgram "Excelt.doc"


End Sub
Public Sub tzip()

RunProgram "t.zip"
End Sub

Public Sub Mute()
mmc.Command = "pause"



End Sub
Public Sub muterelease()



mmc.Command = "open"

mmc.Command = "play"







End Sub

Private Sub Timer1_Timer()
str2 = "Keyboard Help"
If y > 30 Then y = 1 Else y = y + 1
Label1(4).Caption = Left(str2, y)
End Sub




































Private Sub at()

RunProgram "Accesstutorial.doc"
  
End Sub

Private Sub pt()
RunProgram "Powerpointtutorial.doc"
  
End Sub


Private Sub khe()
RunProgram "Excelkh.doc"
  
End Sub
Private Sub pptkh()
RunProgram "Powerpointsk.doc"
  
End Sub
Private Sub akh()
RunProgram "Accesssk.doc"
  
End Sub

Private Sub khw()
RunProgram "WSKH.doc"

End Sub

Private Sub kh()
Load Frmhelp
Frmhelp.Show
Frmhelp.Move Screen.Width / 2 - Frmhelp.Width / 2, Screen.Height / 2 - Frmhelp.Height / 2
End Sub

Private Sub ex()






Unload Frmtutorial
Load frmbye

frmbye.Show



End Sub


Public Sub start()

mmc.Command = "close"

mmc.Command = "open"

mmc.Command = "play"


End Sub
