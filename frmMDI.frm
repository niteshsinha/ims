VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm frmMDI 
   BackColor       =   &H8000000C&
   Caption         =   "Inventory Management System"
   ClientHeight    =   7995
   ClientLeft      =   165
   ClientTop       =   525
   ClientWidth     =   12240
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   600
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12240
      _ExtentX        =   21590
      _ExtentY        =   1058
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   24
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "NewUrEntry"
            Object.ToolTipText     =   "New User Entry"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "ManUser"
            Object.ToolTipText     =   "Manage User Details"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "NewPrdEntry"
            Object.ToolTipText     =   "New Product Entry"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "ManPrd"
            Object.ToolTipText     =   "Manage Product Details"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Purchase"
            Object.ToolTipText     =   "Make a Purchase"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Sale"
            Object.ToolTipText     =   "Make a Sale"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "StockIn"
            Object.ToolTipText     =   "Stock In Details"
            ImageIndex      =   7
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "StockOut"
            Object.ToolTipText     =   "Stock Out Details"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "CompStList"
            Object.ToolTipText     =   "Complete Stock List"
            ImageIndex      =   9
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "NewSupEntry"
            Object.ToolTipText     =   "New Supplier Entry"
            ImageIndex      =   10
         EndProperty
         BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "ManSup"
            Object.ToolTipText     =   "Manage Supplier Details"
            ImageIndex      =   11
         EndProperty
         BeginProperty Button18 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button19 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button20 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "NewCustEntry"
            Object.ToolTipText     =   "New Customer Entry"
            ImageIndex      =   12
         EndProperty
         BeginProperty Button21 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "ManCust"
            Object.ToolTipText     =   "Manage Customer Details"
            ImageIndex      =   13
         EndProperty
         BeginProperty Button22 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button23 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button24 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Exit"
            Object.ToolTipText     =   "Exit"
            ImageIndex      =   15
         EndProperty
      EndProperty
      Begin MSComctlLib.ImageList ImageList1 
         Left            =   14280
         Top             =   120
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   32
         ImageHeight     =   32
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   15
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":0000
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":3237
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":6494
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":9899
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":C86A
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":EC91
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":112BA
               Key             =   ""
            EndProperty
            BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":1441A
               Key             =   ""
            EndProperty
            BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":175D2
               Key             =   ""
            EndProperty
            BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":1A702
               Key             =   ""
            EndProperty
            BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":1D8FD
               Key             =   ""
            EndProperty
            BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":20B1B
               Key             =   ""
            EndProperty
            BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":23DC0
               Key             =   ""
            EndProperty
            BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":270AC
               Key             =   ""
            EndProperty
            BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmMDI.frx":2A022
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
   Begin VB.Menu mnUsers 
      Caption         =   "Users"
      Begin VB.Menu mnNewUser 
         Caption         =   "Register New User"
      End
      Begin VB.Menu mnManUser 
         Caption         =   "Manage Users"
      End
   End
   Begin VB.Menu mnPrd 
      Caption         =   "Products"
      Begin VB.Menu mnNewPrd 
         Caption         =   "New Product Entry"
      End
      Begin VB.Menu mnPrdMan 
         Caption         =   "Manage Products"
      End
   End
   Begin VB.Menu mnTra 
      Caption         =   "Transactions"
      Begin VB.Menu mnPur 
         Caption         =   "Purchase"
      End
      Begin VB.Menu mnSal 
         Caption         =   "Sales"
      End
      Begin VB.Menu mnStin 
         Caption         =   "Stock IN"
      End
      Begin VB.Menu mnStout 
         Caption         =   "Stock OUT"
      End
      Begin VB.Menu mnCompStList 
         Caption         =   "Complete Stock List"
      End
   End
   Begin VB.Menu mnSup 
      Caption         =   "Supplier"
      Begin VB.Menu mnNewSup 
         Caption         =   "Add New Supplier"
      End
      Begin VB.Menu mnSupMan 
         Caption         =   "Manage Supplier"
      End
   End
   Begin VB.Menu mnCus 
      Caption         =   "Customer"
      Begin VB.Menu mnNewCus 
         Caption         =   "Add New Customer"
      End
      Begin VB.Menu mnCusMan 
         Caption         =   "Manage Customers"
      End
   End
   Begin VB.Menu mnExit 
      Caption         =   "Exit "
   End
End
Attribute VB_Name = "frmMDI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MDIForm_Load()
If UTYPE = "Worker" Then
 mnUsers.Enabled = False
 mnSup.Enabled = False
 mnCus.Enabled = False

 Toolbar1.Buttons.Item(1).Visible = False
 Toolbar1.Buttons.Item(2).Visible = False
 Toolbar1.Buttons.Item(14).Visible = False
 Toolbar1.Buttons.Item(15).Visible = False
 Toolbar1.Buttons.Item(16).Visible = False
 Toolbar1.Buttons.Item(17).Visible = False
 Toolbar1.Buttons.Item(18).Visible = False
 Toolbar1.Buttons.Item(19).Visible = False
 Toolbar1.Buttons.Item(20).Visible = False
 Toolbar1.Buttons.Item(21).Visible = False
End If
End Sub

Private Sub mnCompStList_Click()
frmCompStList.Show
End Sub

Private Sub mnCusMan_Click()
frmManCust.Show
End Sub

Private Sub mnExit_Click()
End
End Sub

Private Sub mnManUser_Click()
frmManUser.Show
End Sub

Private Sub mnNewCus_Click()
frmNewCustEntry.Show
End Sub

Private Sub mnNewPrd_Click()
frmNewProdEntry.Show
End Sub

Private Sub mnNewSup_Click()
frmNewSupEntry.Show
End Sub

Private Sub mnNewUser_Click()
frmNewUrReg.Show
End Sub

Private Sub mnPrdMan_Click()
frmManPrd.Show
End Sub

Private Sub mnPur_Click()
frmPurchase.Show
End Sub

Private Sub mnRep_Click()
Dim rs As New ADODB.Recordset
 'strsql = "SELECT a.Pur_Id,a.Wor_Id, a.Pur_Date, a.Pur_Total, b.Prd_Id, c.Prd_Name, b.Pur_CostPrice, b.Pur_Qty FROM tblPurchaseMain AS a, tblPurchaseSub AS b, tblProduct AS c WHERE c.Prd_Id=b.Prd_Id and a.Pur_Id=b.Pur_Id and a.Pur_Id=(Select max(d.Pur_Id) from tblPurchaseMain d)"
 'rs.Open strsql, cn
 'Set DataReport1.DataSource = rs
End Sub

Private Sub mnSal_Click()
frmSales.Show
End Sub

Private Sub mnStin_Click()
frmStockIn.Show
End Sub

Private Sub mnStout_Click()
frmStockOut.Show
End Sub

Private Sub mnSupMan_Click()
frmManSup.Show
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
        
        Case "NewUrEntry"
            frmNewUrReg.Show
        Case "ManUser"
            frmManUser.Show
        Case "NewPrdEntry"
            frmNewProdEntry.Show
        Case "ManPrd"
            frmManPrd.Show
        Case "Purchase"
            frmPurchase.Show
        Case "Sale"
            frmSales.Show
        Case "StockIn"
            frmStockIn.Show
        Case "StockOut"
            frmStockOut.Show
        Case "CompStList"
            frmCompStList.Show
        Case "NewSupEntry"
            frmNewSupEntry.Show
        Case "ManSup"
            frmManSup.Show
        Case "NewCustEntry"
            frmNewCustEntry.Show
        Case "ManCust"
            frmManCust.Show
        Case "Rpt"
        Case "Exit"
            End
    
   End Select
End Sub
