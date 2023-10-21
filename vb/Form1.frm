VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4980
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6975
   LinkTopic       =   "Form1"
   ScaleHeight     =   4980
   ScaleWidth      =   6975
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.TreeView TreeView1 
      Height          =   2055
      Left            =   840
      TabIndex        =   0
      Top             =   960
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   3625
      _Version        =   393217
      PathSeparator   =   ""
      Style           =   7
      Appearance      =   1
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
 Dim nodX             As Node
   Dim I                As Integer
   TreeView1.BorderStyle = vbFixedSingle ' Show border.

   ' Create a root node.
   Set nodX = TreeView1.Nodes.Add(, , "root", "Root")

   For I = 1 To 5   ' Add 5 child nodes.
      Set nodX = TreeView1.Nodes.Add(I, tvwChild, , "Node " & CStr(I))
   Next I
End Sub

Private Sub Form_Click()
   Dim I                As Integer
   For I = 1 To TreeView1.Nodes.Count
      ' Expand all nodes.
      TreeView1.Nodes(I).Expanded = True
   Next I
End Sub

