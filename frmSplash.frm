VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmSplash 
   BackColor       =   &H00C0E0FF&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   5085
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   9270
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   339
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   618
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ProgressBar PB1 
      Height          =   285
      Left            =   3480
      Negotiate       =   -1  'True
      TabIndex        =   3
      Top             =   4440
      Width           =   5385
      _ExtentX        =   9499
      _ExtentY        =   503
      _Version        =   393216
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0E0FF&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   4530
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   9060
      Begin VB.PictureBox Picture1 
         AutoSize        =   -1  'True
         Height          =   4755
         Left            =   0
         Picture         =   "frmSplash.frx":2372
         ScaleHeight     =   4695
         ScaleWidth      =   3000
         TabIndex        =   7
         Top             =   120
         Width           =   3060
         Begin MSComctlLib.ImageList ImageList1 
            Left            =   3000
            Top             =   2640
            _ExtentX        =   1005
            _ExtentY        =   1005
            BackColor       =   -2147483643
            ImageWidth      =   200
            ImageHeight     =   313
            MaskColor       =   12632256
            _Version        =   393216
            BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
               NumListImages   =   1
               BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
                  Picture         =   "frmSplash.frx":3014C
                  Key             =   ""
               EndProperty
            EndProperty
         End
      End
      Begin VB.Timer Timer1 
         Interval        =   15
         Left            =   2400
         Top             =   720
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "              Gyanendra Jha"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   1170
         Left            =   3120
         TabIndex        =   5
         Top             =   2880
         Width           =   5655
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Presented By"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3240
         TabIndex        =   4
         Top             =   2640
         Width           =   1455
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Have a good day"
         BeginProperty Font 
            Name            =   "Impact"
            Size            =   45
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   2175
         Index           =   1
         Left            =   3480
         TabIndex        =   2
         Top             =   720
         Width           =   5595
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label2 
         BackColor       =   &H0080C0FF&
         BorderStyle     =   1  'Fixed Single
         Height          =   4845
         Left            =   3000
         TabIndex        =   1
         Top             =   120
         Width           =   6015
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "For futher enquiries and suggestions contact me at gyanendra_jha@rediffmail.com"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   240
      Left            =   60
      TabIndex        =   6
      Top             =   4800
      Width           =   9060
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim i%

Private Sub Form_Load()
Picture1.Picture = ImageList1.ListImages(1).Picture
i = 0
PB1.Min = 0
PB1.Max = 99
Me.MousePointer = vbHourglass
Load frmMain
Load frmsecurity
End Sub

Private Sub Frame1_Click()
    Unload Me
End Sub







Private Sub Timer1_Timer()
i = i + 1
If i = 100 Then
    Load frmMain
    
    frmMain.Show
    Load frmsecurity
    frmsecurity.Show
    
        Unload Me
Else
        PB1.Value = i
End If
End Sub
