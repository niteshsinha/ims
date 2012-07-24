VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmSearchPrdSales 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Search Product"
   ClientHeight    =   4845
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   8520
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   4845
   ScaleWidth      =   8520
   Begin VB.Frame Frame1 
      Height          =   4455
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8175
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
         Height          =   495
         Left            =   2160
         TabIndex        =   3
         Top             =   240
         Width           =   2055
      End
      Begin VB.CommandButton cmdSearch 
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
         Left            =   5760
         TabIndex        =   2
         Top             =   240
         Width           =   1815
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   3255
         Left            =   240
         TabIndex        =   1
         Top             =   840
         Width           =   7695
         _ExtentX        =   13573
         _ExtentY        =   5741
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
         NumItems        =   6
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Product Id"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Product Type"
            Object.Width           =   2892
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Product Name"
            Object.Width           =   2892
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Selling Price (Rs)"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Cost Price (Rs)"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "Quantity"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Label Label1 
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
         Left            =   720
         TabIndex        =   5
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label Label2 
         Caption         =   "* Double Click to select the Product Details"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   4080
         Width           =   3135
      End
   End
End
Attribute VB_Name = "frmSearchPrdSales"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As Recordset
Dim strsql As String
Dim TQ As Integer

Private Sub cmdSearch_Click()
strsql = "Select tblProduct.Prd_Id, Prd_Type, Prd_Name,Prd_SellPrice, Prd_CostPrice,Stock from tblProduct,tblStock where tblProduct.Prd_Id=tblStock.Prd_Id and Prd_Name like '" & txtPrdName.Text & "%'"
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
 TQ = rs.Fields(5).Value
 rs.MoveNext
Loop
rs.Close
End Sub

Private Sub Form_Load()
Call cmdSearch_Click
End Sub

Private Sub ListView1_DblClick()
frmSales.txtPrdId.Text = ListView1.SelectedItem.Text
frmSales.txtPrdType.Text = ListView1.SelectedItem.SubItems(1)
frmSales.txtPrdName.Text = ListView1.SelectedItem.SubItems(2)
frmSales.txtSellPrice.Text = ListView1.SelectedItem.SubItems(3)
frmSales.txtTotalQuantity.Text = ListView1.SelectedItem.SubItems(5)
Unload Me
frmSales.Show
End Sub
