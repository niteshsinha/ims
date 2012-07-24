VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmManSup 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Manage Supplier Details"
   ClientHeight    =   7815
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   12015
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   7815
   ScaleWidth      =   12015
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
      Left            =   5280
      TabIndex        =   5
      Top             =   6480
      Width           =   2535
   End
   Begin VB.TextBox txtSupId 
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
      Left            =   5280
      TabIndex        =   3
      Top             =   5280
      Width           =   2535
   End
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
      Left            =   5280
      TabIndex        =   4
      Top             =   5880
      Width           =   2535
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
      Left            =   840
      TabIndex        =   14
      Top             =   0
      Width           =   2895
      Begin VB.Frame Frame3 
         Height          =   2055
         Left            =   240
         TabIndex        =   22
         Top             =   2640
         Width           =   2415
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
            TabIndex        =   11
            Top             =   1440
            Width           =   1455
         End
         Begin VB.TextBox txtIdSr 
            BackColor       =   &H00FFFFFF&
            Height          =   375
            Left            =   120
            TabIndex        =   10
            Top             =   840
            Width           =   2175
         End
         Begin VB.Label Label2 
            Caption         =   "Enter Supplier ID"
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
            TabIndex        =   23
            Top             =   360
            Width           =   1575
         End
      End
      Begin VB.Frame Frame2 
         Height          =   2055
         Left            =   240
         TabIndex        =   15
         Top             =   360
         Width           =   2415
         Begin VB.TextBox txtNameSr 
            BackColor       =   &H00FFFFFF&
            Height          =   375
            Left            =   120
            TabIndex        =   8
            Top             =   840
            Width           =   2175
         End
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
            TabIndex        =   9
            Top             =   1440
            Width           =   1455
         End
         Begin VB.Label Label1 
            Caption         =   "Enter Supplier Name"
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
            TabIndex        =   16
            Top             =   360
            Width           =   1935
         End
      End
   End
   Begin VB.Frame Frame4 
      Height          =   735
      Left            =   3960
      TabIndex        =   7
      Top             =   4080
      Width           =   7935
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
         Left            =   600
         TabIndex        =   0
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
         Left            =   5475
         TabIndex        =   2
         Top             =   240
         Width           =   1815
      End
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
         Left            =   3045
         TabIndex        =   1
         Top             =   240
         Width           =   1815
      End
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
      Left            =   5280
      TabIndex        =   6
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
      Height          =   1125
      Left            =   9000
      MultiLine       =   -1  'True
      TabIndex        =   12
      Top             =   5280
      Width           =   2655
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   3735
      Left            =   3960
      TabIndex        =   13
      Top             =   120
      Width           =   7935
      _ExtentX        =   13996
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
      NumItems        =   5
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Supplier ID"
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
      Left            =   4080
      TabIndex        =   21
      Top             =   5955
      Width           =   1095
   End
   Begin VB.Label Label9 
      Caption         =   "Supplier ID"
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
      Left            =   4080
      TabIndex        =   20
      Top             =   5340
      Width           =   1095
   End
   Begin VB.Label Label6 
      Caption         =   "Contact No"
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
      Left            =   4080
      TabIndex        =   19
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
      Left            =   8040
      TabIndex        =   18
      Top             =   5715
      Width           =   855
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
      Left            =   4080
      TabIndex        =   17
      Top             =   6555
      Width           =   1095
   End
   Begin VB.Shape Shape1 
      BorderStyle     =   6  'Inside Solid
      Height          =   2655
      Left            =   3960
      Top             =   5040
      Width           =   7935
   End
   Begin VB.Image Image1 
      Height          =   7575
      Left            =   120
      Picture         =   "frmManSup.frx":0000
      Top             =   120
      Width           =   585
   End
End
Attribute VB_Name = "frmManSup"
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
 rs.MoveNext
Loop
rs.Close
End Sub

Private Sub cmdDel_Click()
Dim chk As Integer
chk = MsgBox("Do u want to Delete Selected Record..?", vbYesNo + vbQuestion, "Confirmation")
If chk = vbYes Then
 cn.Execute "Delete from tblSupplier where Sup_Id=" & ListView1.SelectedItem.Text & " "
 Display (strsql)
 Call cmdResetAll_Click
End If
End Sub

Private Sub cmdIdSr_Click()
strsql = "Select * from tblSupplier where  Sup_Id like '" & txtIdSr.Text & "%'"
Display (strsql)
End Sub

Private Sub cmdNameSr_Click()
strsql = "Select * from tblSupplier where  Sup_FirstName like '" & txtNameSr.Text & "%'"
Display (strsql)
End Sub

Private Sub cmdResetAll_Click()
Form_Load
txtAdd.Text = ""
txtContactNo = ""
txtFName = ""
txtIdSr = ""
txtNameSr = ""
txtSupId = ""
txtLName = ""
End Sub

Private Sub cmdUpdate_Click()
If txtSupId.Text = "" Then
 MsgBox "Please Select a Record", vbOKOnly + vbExclamation, "No Record Selected"
Else
 On Error GoTo myErr
 cn.Execute "update tblSupplier set Sup_FirstName='" & txtFName.Text & "', Sup_LastName='" & txtLName.Text & "', Sup_Address='" & txtAdd.Text & "', Sup_ContactNo='" & txtContactNo.Text & "' where Sup_Id=" & txtSupId.Text & ""
 Display (strsql)
 Exit Sub
myErr:
 MsgBox Err.Description
End If

End Sub

Private Sub Form_Load()
strsql = "Select * from tblSupplier"
Set rs = New Recordset
Display (strsql)
End Sub

Private Sub ListView1_DblClick()
txtSupId.Text = ListView1.SelectedItem.Text
txtFName.Text = ListView1.SelectedItem.SubItems(1)
txtLName.Text = ListView1.SelectedItem.SubItems(2)
txtAdd.Text = ListView1.SelectedItem.SubItems(3)
txtContactNo.Text = ListView1.SelectedItem.SubItems(4)
txtSupId.Enabled = False
End Sub
