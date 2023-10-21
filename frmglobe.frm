VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Object = "{7187619F-D732-11D2-8A16-00000E84DA63}#1.0#0"; "ezAVI26.ocx"
Begin VB.Form Frmglobe 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   6660
   ClientLeft      =   120
   ClientTop       =   120
   ClientWidth     =   10590
   ControlBox      =   0   'False
   Icon            =   "frmglobe.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6660
   ScaleWidth      =   10590
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MCI.MMControl mc 
      Height          =   330
      Left            =   1560
      TabIndex        =   6
      Top             =   360
      Width           =   3540
      _ExtentX        =   6244
      _ExtentY        =   582
      _Version        =   393216
      DeviceType      =   ""
      FileName        =   "G:\gp\Rmenu1.mid"
   End
   Begin AVIPlay.ezAVIWnd MediaControl 
      Height          =   3630
      Left            =   1800
      TabIndex        =   4
      Top             =   2400
      Width           =   4830
      _ExtentX        =   8520
      _ExtentY        =   6403
      Filename        =   "G:\gp\GLOBE.AVI"
      AutoSize        =   0   'False
      ShowControls    =   0   'False
      Volume          =   100
      Repeat          =   -1  'True
   End
   Begin VB.Timer Timer2 
      Interval        =   1000
      Left            =   360
      Top             =   1560
   End
   Begin VB.Timer Timer1 
      Interval        =   2000
      Left            =   600
      Top             =   480
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "WELCOME"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1215
      Index           =   0
      Left            =   1800
      TabIndex        =   5
      Top             =   1080
      Width           =   5895
   End
   Begin VB.Label Label5 
      BackColor       =   &H00000000&
      Caption         =   "Continue"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   495
      Left            =   480
      MouseIcon       =   "frmglobe.frx":0442
      MousePointer    =   99  'Custom
      TabIndex        =   3
      Top             =   2400
      Width           =   1695
   End
   Begin VB.Label Label4 
      BackColor       =   &H00000000&
      Caption         =   "Quit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   735
      Left            =   360
      MouseIcon       =   "frmglobe.frx":0594
      MousePointer    =   99  'Custom
      TabIndex        =   2
      Top             =   3480
      Width           =   1215
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   3360
      Width           =   2535
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   615
      Left            =   720
      TabIndex        =   0
      Top             =   1080
      Width           =   2775
   End
End
Attribute VB_Name = "Frmglobe"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim bool As Boolean



Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyEscape
Unload Frmglobe


Load frmbye
frmbye.Show



Case vbKeyPageUp



If Label5.Visible = True Then
Unload Frmglobe

Load Frmtutorial
Frmtutorial.Show


End If
End Select


End Sub

Private Sub Form_Load()
Dim i As Integer

mc.Command = "open"
mc.FileName = "Rmenu1.mid"
mc.Command = "Play"
'mc.Repeat = True


mc.Visible = False


MediaControl.Move Screen.Width / 2 - MediaControl.Width / 2, Screen.Height / 2 - MediaControl.Height / 2

MediaControl.Play




'MediaPlayer1.SendMouseClickEvents = True

'MediaPlayer1.FileName = "F:\globe.avi"
'MediaPlayer1.Play
'MediaPlayer1.PlayCount = 30
'MediaPlayer2.FileName = "Rmenu1.mid"
'MediaPlayer2.Play
'MediaPlayer2.PlayCount = 20

'MMControl1.Command = "OPEN"
'MMControl1.FileName = "F:\jhaproject\package\Support\GLOBE.AVI"
'MMControl1.Command = "PLAY"


cmonth% = Month(Now)
CDAY% = Day(Now)
Week% = Weekday(Now)
CYEAR% = Year(Now)

Select Case cmonth%
Case 1: m$ = "January"
Case 2: m$ = "Feburary"
Case 3: m$ = "March"
Case 4: m$ = "April"
Case 5: m$ = "May"
Case 6: m$ = "June"
Case 7: m$ = "July"
Case 8: m$ = "August"
Case 9: m$ = "September"
Case 10: m$ = "October"
Case 11: m$ = "November"
Case 12: m$ = "December"
End Select
Select Case Week%
Case vbSunday: w$ = "Sunday"
Case vbMonday: w$ = "Monday"
Case vbTuesday: w$ = "Tuesday"
Case vbWednesday: w$ = "Wednesday"

Case vbThursday: w$ = "Thursday"
Case vbFriday: w$ = "Friday"
Case vbSaturday: w$ = "Saturday"


End Select
Label3.Caption = w$ & ", " & m$ & Str$(CDAY%) & ", " & Str$(CYEAR%)

End Sub



Private Sub Form_Resize()
Dim i As Integer

'MediaPlayer1.Move ScaleLeft, ScaleTop, ScaleWidth, ScaleHeight - (Label5.Height + 230)

Label5.Move ScaleWidth - (Label5.Height + 1000), ScaleHeight - (Label5.Height + 200)
Label4.Move 0, ScaleHeight - 730

Label2.Move Screen.Width / 10, Screen.Height - 700
Label3.Move Screen.Width - 4000, Screen.Height - 700


Label1(0).Move (Screen.Width / 2 - Label1(0).Width / 2) + 70, (Screen.Height / 2 - Label1(0).Height / 2) - 3000



'MediaControl.Height = Frmglobe.Height - Label5.Height + 230

'MediaControl.Width = fromglobe.Width - 200

End Sub






Private Sub label5_Click()
'MediaPlayer1.Stop

Unload Frmglobe

Load Frmtutorial
Frmtutorial.Show


End Sub

Private Sub label4_Click()


Unload Frmglobe


End Sub









Private Sub Timer1_Timer()
If bool = False Then







 Label1(0).Visible = True
 
 
bool = True

Else


Label1(0).Visible = False





bool = False

End If

End Sub




Private Sub Timer2_Timer()


If Hour(Now) > 12 Then
daytime$ = "  PM"
normaltime = Hour(Now) - 12
Else
daytime$ = " AM"
normaltime = Hour(Now)
End If

Current$ = Str(normaltime) + " :"

Current$ = Current$ + Str$(Minute(Now)) + " :"
Current$ = Current$ + Str$(Second(Now))
Current$ = Current$ + daytime$
Label2.Caption = Current$




End Sub

