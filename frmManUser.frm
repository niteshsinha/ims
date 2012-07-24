VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmManUser 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Manage User Details"
   ClientHeight    =   8025
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   14415
   DrawMode        =   5  'Not Copy Pen
   FillColor       =   &H80000000&
   ForeColor       =   &H8000000A&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8025
   ScaleWidth      =   14415
   Begin VB.TextBox txtFName 
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
      Height          =   405
      Left            =   6120
      TabIndex        =   27
      Top             =   6480
      Width           =   2535
   End
   Begin VB.TextBox txtPass 
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
      Height          =   405
      IMEMode         =   3  'DISABLE
      Left            =   6120
      PasswordChar    =   "*"
      TabIndex        =   26
      Top             =   5925
      Width           =   2535
   End
   Begin VB.TextBox txtUserId 
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
      Height          =   405
      Left            =   6120
      TabIndex        =   25
      Top             =   5400
      Width           =   2535
   End
   Begin VB.TextBox txtLName 
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
      Height          =   405
      Left            =   6120
      TabIndex        =   24
      Top             =   7080
      Width           =   2535
   End
   Begin VB.TextBox txtAdd 
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
      Height          =   645
      Left            =   10800
      MultiLine       =   -1  'True
      TabIndex        =   16
      Top             =   5280
      Width           =   2535
   End
   Begin VB.TextBox txtContactNo 
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
      Height          =   405
      Left            =   10800
      TabIndex        =   15
      Top             =   6480
      Width           =   2535
   End
   Begin VB.TextBox txtDOJ 
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
      Height          =   405
      Left            =   10800
      TabIndex        =   14
      Top             =   7080
      Width           =   2535
   End
   Begin VB.Frame Frame4 
      Height          =   735
      Left            =   4080
      TabIndex        =   10
      Top             =   4080
      Width           =   10215
      Begin VB.CommandButton cmdDel 
         Caption         =   "Delete"
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
         Left            =   4245
         TabIndex        =   13
         Top             =   240
         Width           =   1815
      End
      Begin VB.CommandButton cmdResetAll 
         Caption         =   "Reset All"
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
         Left            =   6675
         TabIndex        =   12
         Top             =   240
         Width           =   1815
      End
      Begin VB.CommandButton cmdUpdate 
         Caption         =   "Update"
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
         Left            =   1800
         TabIndex        =   11
         Top             =   240
         Width           =   1815
      End
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   3735
      Left            =   4080
      TabIndex        =   9
      Top             =   240
      Width           =   10215
      _ExtentX        =   18018
      _ExtentY        =   6588
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   16777215
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   7
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "User ID"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "First Name"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Last Name"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "Address"
         Object.Width           =   3598
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Text            =   "Contact No"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   5
         Text            =   "Gender"
         Object.Width           =   1482
      EndProperty
      BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   6
         Text            =   "Date Of Joining"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.Frame Frame3 
      Height          =   2055
      Left            =   1200
      TabIndex        =   5
      Top             =   2880
      Width           =   2415
      Begin VB.TextBox txtIdSr 
         BackColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   840
         Width           =   2175
      End
      Begin VB.CommandButton cmdIdSr 
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
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   1440
         Width           =   1455
      End
      Begin VB.Label Label2 
         Caption         =   "Enter Worker ID"
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
         TabIndex        =   8
         Top             =   360
         Width           =   1575
      End
   End
   Begin VB.Frame Frame1 
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
      Height          =   7695
      Left            =   960
      TabIndex        =   0
      Top             =   120
      Width           =   2895
      Begin VB.Frame Frame2 
         Height          =   2055
         Left            =   240
         TabIndex        =   1
         Top             =   480
         Width           =   2415
         Begin VB.CommandButton cmdNameSr 
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
            Height          =   375
            Left            =   120
            TabIndex        =   4
            Top             =   1440
            Width           =   1455
         End
         Begin VB.TextBox txtNameSr 
            BackColor       =   &H00FFFFFF&
            Height          =   375
            Left            =   120
            TabIndex        =   3
            Top             =   840
            Width           =   2175
         End
         Begin VB.Label Label1 
            Caption         =   "Enter Worker Name"
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
            TabIndex        =   2
            Top             =   360
            Width           =   1935
         End
      End
   End
   Begin VB.Image Image1 
      Height          =   7575
      Left            =   240
      Picture         =   "frmManUser.frx":0000
      Top             =   240
      Width           =   585
   End
   Begin VB.Shape Shape1 
      BorderStyle     =   6  'Inside Solid
      Height          =   2775
      Left            =   4080
      Top             =   5040
      Width           =   10215
   End
   Begin VB.Label Label4 
      Caption         =   "Last Name"
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
      Left            =   4800
      TabIndex        =   20
      Top             =   7155
      Width           =   1095
   End
   Begin VB.Label Label5 
      Caption         =   "Address"
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
      Left            =   9360
      TabIndex        =   19
      Top             =   5475
      Width           =   855
   End
   Begin VB.Label Label6 
      Caption         =   "Contact Number"
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
      Left            =   9000
      TabIndex        =   18
      Top             =   6555
      Width           =   1575
   End
   Begin VB.Label Label8 
      Caption         =   "Date of Joining"
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
      Left            =   9000
      TabIndex        =   17
      Top             =   7155
      Width           =   1575
   End
   Begin VB.Label Label9 
      Caption         =   "User ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   4800
      TabIndex        =   23
      Top             =   5460
      Width           =   855
   End
   Begin VB.Label Label7 
      Caption         =   "First Name"
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
      Left            =   4800
      TabIndex        =   22
      Top             =   6555
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "Password"
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
      Left            =   4800
      TabIndex        =   21
      Top             =   6000
      Width           =   1095
   End
End
Attribute VB_Name = "frmManUser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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
 lst.SubItems(4) = rs(4)
 lst.SubItems(5) = rs(5)
 lst.SubItems(6) = rs(6)
 rs.MoveNext
Loop
rs.Close
End Sub

Private Sub cmdDel_Click()
Dim chk As Integer
chk = MsgBox("Do u want to Delete Selected Record..?", vbYesNo + vbQuestion, "Confirmation")
If chk = vbYes Then
 cn.Execute "Delete from tblWorker where Wor_Id=" & ListView1.SelectedItem.Text & " "
 Display (strsql)
 Call cmdResetAll_Click
End If
End Sub

Private Sub cmdIdSr_Click()
strsql = "select * from tblWorker, tblUserType where tblUserType.UserId=tblWorker.Wor_Id and Wor_Id like '" & txtIdSr.Text & "%'"
Display (strsql)
End Sub

Private Sub cmdNameSr_Click()
strsql = "select * from tblWorker where Wor_FirstName like '" & txtNameSr.Text & "%'"
Display (strsql)
End Sub

Private Sub cmdResetAll_Click()
Form_Load
txtAdd.Text = ""
txtContactNo = ""
txtDOJ = ""
txtFName = ""
txtIdSr = ""
txtLName = ""
txtNameSr = ""
txtPass = ""
txtUserId = ""
End Sub

Private Sub cmdUpdate_Click()
If txtUserId.Text = "" Then
 MsgBox "Please Select a Record", vbOKOnly + vbExclamation, "No Record Selected"
Else
 On Error GoTo myErr
 cn.Execute "update tblWorker set Wor_FirstName='" & txtFName.Text & "', Wor_LastName='" & txtLName.Text & "', Wor_Address='" & txtAdd.Text & "', Wor_ContactNo='" & txtContactNo.Text & "' where Wor_Id=" & txtUserId.Text & ""
 Display (strsql)
 Exit Sub
myErr:
 MsgBox Err.Description
End If
End Sub

Private Sub Form_Load()
strsql = "Select * from tblWorker"
Set rs = New Recordset
Display (strsql)
End Sub

Private Sub ListView1_DblClick()
txtUserId.Text = ListView1.SelectedItem.Text
txtPass.Text = "*******"
txtFName.Text = ListView1.SelectedItem.SubItems(1)
txtLName.Text = ListView1.SelectedItem.SubItems(2)
txtAdd.Text = ListView1.SelectedItem.SubItems(3)
txtContactNo.Text = ListView1.SelectedItem.SubItems(4)
txtDOJ.Text = ListView1.SelectedItem.SubItems(6)
txtDOJ.Enabled = False
txtUserId.Enabled = False
txtPass.Enabled = False
End Sub

