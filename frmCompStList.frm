VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmCompStList 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Complete Stock List"
   ClientHeight    =   6975
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10815
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6975
   ScaleWidth      =   10815
   Begin MSComctlLib.ListView ListView1 
      Height          =   6615
      Left            =   4800
      TabIndex        =   13
      Top             =   240
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   11668
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   4
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Product ID"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Product Name"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Product Type"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "Quantity"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.Frame Frame1 
      Caption         =   "Filter Products"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6735
      Left            =   840
      TabIndex        =   0
      Top             =   120
      Width           =   3735
      Begin VB.Frame Frame4 
         Height          =   1695
         Left            =   240
         TabIndex        =   9
         Top             =   4440
         Width           =   3255
         Begin VB.TextBox txtQLess 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   2040
            TabIndex        =   11
            Top             =   300
            Width           =   975
         End
         Begin VB.CommandButton cmdSrQLess 
            Caption         =   "Search"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            TabIndex        =   10
            Top             =   960
            Width           =   1815
         End
         Begin VB.Label Label3 
            Caption         =   "* Quantity less than"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   240
            TabIndex        =   12
            Top             =   360
            Width           =   1695
         End
      End
      Begin VB.Frame Frame3 
         Height          =   1695
         Left            =   240
         TabIndex        =   5
         Top             =   2520
         Width           =   3255
         Begin VB.CommandButton cmdSrQMore 
            Caption         =   "Search"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            TabIndex        =   8
            Top             =   960
            Width           =   1815
         End
         Begin VB.TextBox txtQMore 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   2040
            TabIndex        =   7
            Top             =   300
            Width           =   975
         End
         Begin VB.Label Label2 
            Caption         =   "* Quantity more than"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   6
            Top             =   360
            Width           =   1815
         End
      End
      Begin VB.Frame Frame2 
         Height          =   2055
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   3255
         Begin VB.CommandButton cmdSrPrdType 
            Caption         =   "Search"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            TabIndex        =   4
            Top             =   1320
            Width           =   1815
         End
         Begin VB.ComboBox comPrdType 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   240
            TabIndex        =   3
            Top             =   727
            Width           =   2175
         End
         Begin VB.Label Label1 
            Caption         =   "Select Product Type"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   240
            TabIndex        =   2
            Top             =   240
            Width           =   2175
         End
      End
      Begin VB.Label Label4 
         Caption         =   "* Enter a Number"
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   6240
         Width           =   1335
      End
   End
   Begin VB.Image Image1 
      Height          =   6615
      Left            =   120
      Picture         =   "frmCompStList.frx":0000
      Top             =   240
      Width           =   585
   End
End
Attribute VB_Name = "frmCompStList"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim comboval As String
Dim rs As Recordset
Dim strsql As String

Private Sub Display(sql As String)
rs.Open sql, cn
Dim lst As ListItem
ListView1.ListItems.Clear
Do While Not rs.EOF
 Set lst = ListView1.ListItems.Add(, , rs(0))
 lst.SubItems(1) = rs(1)
 lst.SubItems(2) = rs(2)
 lst.SubItems(3) = rs(3)
 rs.MoveNext
Loop
rs.Close
End Sub
Private Sub fillcombo()
Set rs = New Recordset
rs.Open "select * from [tblProductType]", cn, adOpenStatic, adLockOptimistic, adCmdText
Do While Not rs.EOF
 comPrdType.AddItem rs(0)
 rs.MoveNext
Loop
End Sub

Private Sub cmdSrPrdType_Click()
If comPrdType.Text = "" Then
 MsgBox "Please Select a Product Type", vbOKOnly + vbExclamation, "Invalid Entry"
Else
 strsql = "Select tblProduct.Prd_Id,Prd_Name,Prd_Type,Stock from tblProduct, tblStock where tblProduct.Prd_Id=tblStock.Prd_id and Prd_Type='" & comPrdType.Text & "'"
 Display (strsql)
End If
End Sub

Private Sub cmdSrQLess_Click()
If txtQLess.Text = "" Then
 MsgBox "Please Enter a Value", vbOKOnly + vbExclamation, "Invalid Entry"
Else
 strsql = "Select tblProduct.Prd_Id,Prd_Name,Prd_Type,Stock from tblProduct, tblStock where tblProduct.Prd_Id=tblStock.Prd_id and Stock <=" & txtQLess.Text & ""
 Display (strsql)
End If
End Sub

Private Sub cmdSrQMore_Click()
If txtQMore.Text = "" Then
 MsgBox "Please Enter a Value", vbOKOnly + vbExclamation, "Invalid Entry"
Else
 strsql = "Select tblProduct.Prd_Id,Prd_Name,Prd_Type,Stock from tblProduct, tblStock where tblProduct.Prd_Id=tblStock.Prd_id and Stock >=" & txtQMore.Text & ""
 Display (strsql)
End If
End Sub

Private Sub Form_Load()
fillcombo
Set rs = New Recordset
strsql = "Select tblProduct.Prd_Id,Prd_Name,Prd_Type,Stock from tblProduct, tblStock where tblProduct.Prd_Id=tblStock.Prd_id"
Display (strsql)
End Sub
