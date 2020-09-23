VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2055
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   2175
   LinkTopic       =   "Form1"
   ScaleHeight     =   2055
   ScaleWidth      =   2175
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "/\"
      Height          =   375
      Left            =   1200
      TabIndex        =   4
      Top             =   840
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "\/"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   840
      Width           =   855
   End
   Begin VB.TextBox Text3 
      Height          =   615
      Left            =   120
      TabIndex        =   2
      Text            =   "Hello+Goodbye"
      Top             =   120
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Top             =   1680
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   1320
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error Resume Next
Text1.Text = Split(Text3.Text, "+")(0)
Text2.Text = Split(Text3.Text, "+")(1)
Text3.Text = ""
End Sub

Private Sub Command2_Click()
Text3.Text = Text1.Text & "+" & Text2.Text
Text2.Text = ""
Text1.Text = ""
End Sub
