VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmStockIn 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Stock IN"
   ClientHeight    =   5175
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10695
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   5175
   ScaleWidth      =   10695
   Begin MSComctlLib.ListView ListView1 
      Height          =   3615
      Left            =   3240
      TabIndex        =   5
      Top             =   1320
      Width           =   7335
      _ExtentX        =   12938
      _ExtentY        =   6376
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
      NumItems        =   5
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Purchase ID"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Product ID"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Product Name"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "Quantity"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Text            =   "Supplier Name"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.Frame Frame1 
      Height          =   1095
      Left            =   3240
      TabIndex        =   0
      Top             =   120
      Width           =   7335
      Begin MSComCtl2.DTPicker dtPurDate 
         Height          =   495
         Left            =   2520
         TabIndex        =   6
         Top             =   120
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   873
         _Version        =   393216
         CustomFormat    =   "MM-dd-yyyy"
         Format          =   47710211
         CurrentDate     =   39916
      End
      Begin VB.CommandButton cmdSubmit 
         Caption         =   "Submit"
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
         Left            =   5040
         TabIndex        =   3
         Top             =   180
         Width           =   1575
      End
      Begin VB.TextBox txtPurDate 
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
         Left            =   2520
         TabIndex        =   2
         Top             =   180
         Width           =   1815
      End
      Begin VB.Label Label2 
         Caption         =   "* Enter the Date to view all the Purchase made on that date."
         Height          =   240
         Left            =   240
         TabIndex        =   4
         Top             =   735
         Width           =   4335
      End
      Begin VB.Label Label1 
         Caption         =   "Purchase Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   1575
      End
   End
   Begin VB.Image Image1 
      Height          =   4710
      Left            =   120
      Picture         =   "frmStockIn.frx":0000
      Top             =   240
      Width           =   2925
   End
End
Attribute VB_Name = "frmStockIn"
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
 lst.SubItems(4) = rs(4) & " " & rs(5)
 rs.MoveNext
Loop
rs.Close
End Sub

Private Sub cmdSubmit_Click()
strsql = "Select a.Pur_Id,c.Prd_Id,c.Prd_Name,b.Pur_Qty,d.Sup_FirstName,d.Sup_LastName from tblPurchaseMain a,tblPurchaseSub b,tblProduct c,tblSupplier d where a.Pur_Id=b.Pur_Id and c.Prd_Id=b.Prd_Id and b.Sup_Id=d.Sup_Id and a.Pur_Date=" & dtPurDate.Value & ""
Display (strsql)
End Sub

Private Sub Form_Load()
Set rs = New Recordset
End Sub

