VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmManPrd 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Manage Product Details"
   ClientHeight    =   8145
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   14775
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8145
   ScaleWidth      =   14775
   Begin VB.Frame Frame4 
      Height          =   735
      Left            =   3840
      TabIndex        =   6
      Top             =   4560
      Width           =   10815
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
         Left            =   7200
         TabIndex        =   25
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
         TabIndex        =   8
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
         Left            =   4500
         TabIndex        =   7
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.TextBox txtCostPrice 
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
      TabIndex        =   5
      Top             =   7320
      Width           =   2535
   End
   Begin VB.TextBox txtSelPrice 
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
      TabIndex        =   4
      Top             =   6720
      Width           =   2535
   End
   Begin VB.TextBox txtPrdDesc 
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
      Height          =   885
      Left            =   10800
      MultiLine       =   -1  'True
      TabIndex        =   3
      Top             =   5640
      Width           =   3255
   End
   Begin VB.TextBox txtPrdType 
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
      Left            =   5880
      TabIndex        =   2
      Top             =   6840
      Width           =   2535
   End
   Begin VB.TextBox txtPrdId 
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
      Left            =   5880
      TabIndex        =   1
      Top             =   5700
      Width           =   2535
   End
   Begin VB.TextBox txtPrdName 
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
      Left            =   5880
      TabIndex        =   0
      Top             =   6270
      Width           =   2535
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   4215
      Left            =   3840
      TabIndex        =   9
      Top             =   120
      Width           =   10815
      _ExtentX        =   19076
      _ExtentY        =   7435
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
         Text            =   "Product ID"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Product Type"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Product Name"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "Product Description"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Text            =   "Stock"
         Object.Width           =   1764
      EndProperty
      BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   5
         Text            =   "Selling Price (Rs)"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   6
         Text            =   "Cost Price (Rs)"
         Object.Width           =   2540
      EndProperty
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
      Height          =   7815
      Left            =   840
      TabIndex        =   10
      Top             =   120
      Width           =   2895
      Begin VB.Frame Frame3 
         Height          =   2055
         Left            =   240
         TabIndex        =   21
         Top             =   2760
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
            TabIndex        =   23
            Top             =   1440
            Width           =   1455
         End
         Begin VB.TextBox txtIdSr 
            BackColor       =   &H00FFFFFF&
            Height          =   375
            Left            =   120
            TabIndex        =   22
            Top             =   840
            Width           =   2175
         End
         Begin VB.Label Label2 
            Caption         =   "Enter Product ID"
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
            TabIndex        =   24
            Top             =   360
            Width           =   1575
         End
      End
      Begin VB.Frame Frame2 
         Height          =   2055
         Left            =   240
         TabIndex        =   11
         Top             =   480
         Width           =   2415
         Begin VB.TextBox txtNameSr 
            BackColor       =   &H00FFFFFF&
            Height          =   375
            Left            =   120
            TabIndex        =   13
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
            TabIndex        =   12
            Top             =   1440
            Width           =   1455
         End
         Begin VB.Label Label1 
            Caption         =   "Enter Product Name"
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
            TabIndex        =   14
            Top             =   360
            Width           =   1935
         End
      End
   End
   Begin VB.Image Image1 
      Height          =   7575
      Left            =   120
      Picture         =   "frmManPrd.frx":0000
      Top             =   240
      Width           =   585
   End
   Begin VB.Label Label7 
      Caption         =   "Product Name"
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
      Left            =   4440
      TabIndex        =   20
      Top             =   6345
      Width           =   1335
   End
   Begin VB.Label Label9 
      Caption         =   "Product ID"
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
      Left            =   4440
      TabIndex        =   19
      Top             =   5760
      Width           =   975
   End
   Begin VB.Label Label8 
      Caption         =   "Cost Price (Rs)"
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
      Left            =   8880
      TabIndex        =   18
      Top             =   7395
      Width           =   1455
   End
   Begin VB.Label Label6 
      Caption         =   "Selling Price (Rs)"
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
      Left            =   8880
      TabIndex        =   17
      Top             =   6795
      Width           =   1575
   End
   Begin VB.Label Label5 
      Caption         =   "Product Description"
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
      Left            =   8880
      TabIndex        =   16
      Top             =   5955
      Width           =   1815
   End
   Begin VB.Label Label4 
      Caption         =   "Product Type"
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
      Left            =   4440
      TabIndex        =   15
      Top             =   6915
      Width           =   1335
   End
   Begin VB.Shape Shape1 
      BorderStyle     =   6  'Inside Solid
      Height          =   2415
      Left            =   3840
      Top             =   5520
      Width           =   10815
   End
End
Attribute VB_Name = "frmManPrd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As Recordset
Dim strsql As String

Private Sub cmdDel_Click()
Dim chk As Integer
chk = MsgBox("Do u want to Delete Selected Record..?", vbYesNo + vbQuestion, "Confirmation")
If chk = vbYes Then
 cn.Execute "Delete from tblProduct where Prd_Id=" & ListView1.SelectedItem.Text & " "
 Display (strsql)
 Call cmdResetAll_Click
End If
End Sub

Private Sub cmdIdSr_Click()
strsql = "Select tblProduct.Prd_Id, Prd_Type, Prd_Name, Prd_Desc, Stock, Prd_SellPrice, Prd_CostPrice from tblProduct, tblStock where tblStock.Prd_Id = tblProduct.Prd_Id and tblProduct.Prd_Id like '" & txtIdSr.Text & "%'"
Display (strsql)
End Sub

Private Sub cmdNameSr_Click()
strsql = "Select tblProduct.Prd_Id, Prd_Type, Prd_Name, Prd_Desc, Stock, Prd_SellPrice, Prd_CostPrice from tblProduct, tblStock where tblStock.Prd_Id = tblProduct.Prd_Id and Prd_Name like '" & txtNameSr.Text & "%'"
Display (strsql)
End Sub

Private Sub cmdResetAll_Click()
Form_Load
txtCostPrice = ""
txtIdSr = ""
txtNameSr = ""
txtPrdDesc = ""
txtPrdId = ""
txtPrdName = ""
txtPrdType = ""
txtSelPrice = ""
End Sub

Private Sub cmdUpdate_Click()
If txtPrdId.Text = "" Then
 MsgBox "Please Select a Record", vbOKOnly + vbExclamation, "No Record Selected"
Else
 On Error GoTo myErr
 cn.Execute "update tblProduct set Prd_Desc ='" & txtPrdDesc.Text & "', Prd_SellPrice =" & txtSelPrice.Text & ", Prd_CostPrice=" & txtCostPrice.Text & " where Prd_Id=" & txtPrdId.Text & ""
 Display (strsql)
 Exit Sub
myErr:
 MsgBox Err.Description
End If
End Sub

Private Sub Form_Load()
strsql = "Select tblProduct.Prd_Id, Prd_Type, Prd_Name, Prd_Desc, Stock, Prd_SellPrice, Prd_CostPrice from tblProduct, tblStock where tblStock.Prd_Id = tblProduct.Prd_Id "
Set rs = New Recordset
Display (strsql)
End Sub

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

Private Sub ListView1_DblClick()
txtPrdId.Text = ListView1.SelectedItem.Text
txtPrdName.Text = ListView1.SelectedItem.SubItems(1)
txtPrdType.Text = ListView1.SelectedItem.SubItems(2)
txtPrdDesc.Text = ListView1.SelectedItem.SubItems(3)
txtSelPrice.Text = ListView1.SelectedItem.SubItems(5)
txtCostPrice.Text = ListView1.SelectedItem.SubItems(6)
txtPrdId.Enabled = False
txtPrdName.Enabled = False
txtPrdType.Enabled = False
End Sub
