VERSION 5.00
Begin VB.Form frmsetup 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   0  'None
   Caption         =   "Software Developed by Gyanendra Jha"
   ClientHeight    =   5685
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6495
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H000000FF&
   Icon            =   "Frmsetup.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Frmsetup.frx":0442
   ScaleHeight     =   5685
   ScaleWidth      =   6495
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4680
      Top             =   1680
   End
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   4560
      Top             =   840
   End
   Begin VB.Image Image3 
      Height          =   510
      Left            =   5760
      Picture         =   "Frmsetup.frx":5A01
      Top             =   5040
      Width           =   540
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FF0000&
      Caption         =   "Server"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2760
      TabIndex        =   1
      Top             =   840
      Width           =   615
   End
   Begin VB.Label lblper 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   2640
      TabIndex        =   0
      Top             =   3840
      Width           =   855
   End
   Begin VB.Image Image2 
      Height          =   495
      Left            =   2280
      Picture         =   "Frmsetup.frx":5BAB
      Top             =   3120
      Width           =   1620
   End
   Begin VB.Image Image1 
      Height          =   1500
      Left            =   1920
      Picture         =   "Frmsetup.frx":6DF2
      Stretch         =   -1  'True
      Top             =   480
      Width           =   2265
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00FFFFC0&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00C0E0FF&
      DrawMode        =   15  'Merge Pen Not
      Height          =   435
      Left            =   720
      Top             =   3840
      Width           =   75
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderWidth     =   2
      FillColor       =   &H00FFFF80&
      Height          =   435
      Left            =   720
      Top             =   3840
      Width           =   4935
   End
End
Attribute VB_Name = "frmsetup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit




Private Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Private Const MAX_PATH = 260
Dim first As Boolean
Dim A As Integer
Dim x As String
Dim y As String
Dim fso As New FileSystemObject




Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyEscape
Unload frmsetup


End Select
End Sub

Private Sub Form_Load()
sndStartM

first = True
    Timer1.Enabled = False
   
 x = WindowsDirectory()
y = SystemDrive()
frmsetup.Move Screen.Width / 2 - frmsetup.Width / 2, Screen.Height / 2 - frmsetup.Height / 2

End Sub

Private Sub Image2_Click()
On Error Resume Next



A = 0

FileCopy "ezAVI26.ocx", x & "\system32\ezAVI26.ocx"


frmsetup.Refresh
     Timer1.Interval = 1000
     Timer1.Enabled = True
     Timer2.Enabled = True
    
   
End Sub

Private Sub Image3_Click()

End

End Sub

Private Sub Timer1_Timer()
If first Then
        Shape2.Width = 135
        first = False
    End If
    Shape2.Width = Shape2.Width + 100
    If Shape2.Width >= 5055 Then  '6135
        Timer1.Enabled = False
        Shape2.Width = 0
        Exit Sub
    End If
End Sub

Private Sub Timer2_Timer()

If A <= 98 Then
          A = A + 2
             lblper.Caption = A & "%"
           End If
          
   If A = 36 Then
           frmsetup.Cls
           
           End If
           
           
           
           
           If A = 30 Then
        
        If fso.FolderExists(y & ":\Program Files\Common Files\SpeechEngines") Then
        lblper.ForeColor = vbBlack
      Print "TTS Engine Folder Detected "
      Print "Reinstall if Web Assitent can't speak "
      
           
      
      
        Else
        
        
       lblper.ForeColor = vbBlack
         Print "TTS Engine Not Detected downloading...."
        RunProgram "package\support\tv_enua.exe"
        
        End If
        
        End If
        
        
        
       

        If A = 100 Then
       lblper.ForeColor = vbWhite
      
      
       
       
       sndStopM
       
       RunProgram "Ms Office.html"
       
      
      
        Timer2.Enabled = False
       Timer1.Enabled = False
       Shape2.Width = 0
       
       Unload Me
     End If
     
     
     
     
     Exit Sub
  
End Sub
Private Function WindowsDirectory() As String
Dim windows_dir As String
Dim length As Long

    ' Get the Windows directory.
    windows_dir = Space$(MAX_PATH)
    length = GetWindowsDirectory(windows_dir, Len(windows_dir))
    WindowsDirectory = Left$(windows_dir, length)
End Function
Private Function SystemDrive() As String
    SystemDrive = Left$(WindowsDirectory(), 1)
End Function
Public Sub sndPlayM(Filename As String)
    Call mciSendString("Open " & Filename & " Alias MM", 0, 0, 0)
    Call mciSendString("Play MM", 0, 0, 0)
End Sub


Public Sub sndStartM()
    
    
    
    sndPlayW ("Sound4.wav")
   
End Sub
Public Sub sndStopM()
    Call mciSendString("Stop MM", 0, 0, 0)
    Call mciSendString("Close MM", 0, 0, 0)
End Sub

Public Sub sndPlayW(Filename As String)
    Call sndPlaySound(Filename, SND_ASYNC Or SND_NODEFAULT Or SND_NOSTOP)
End Sub

