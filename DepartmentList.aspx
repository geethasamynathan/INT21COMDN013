<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepartmentList.aspx.cs" Inherits="EFwithASPwebApp.DepartmentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 362px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnGetAllDepartments" runat="server" OnClick="btnGetAllDepartments_Click" Text="Display all Departmetn Details" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAddNew" runat="server" OnClick="btnAddNew_Click" Text="Add New Department" />
            <br />
            <br />
            Choose the option to Perform :<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="246px">
                <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel2" runat="server" Height="221px">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1">DEpartment Id</td>
                        <td>
                            <asp:TextBox ID="txtDepartmentId" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;Department Name</td>
                        <td>
                            <asp:TextBox ID="txtDepartmentName" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Department Location</td>
                        <td>
                            <asp:TextBox ID="txtDepartmentLocation" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Button ID="btnAddNewDept" runat="server" OnClick="btnAddNewDept_Click" Text="Add" />
                        </td>
                        <td>
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblAddNewdeptStatus" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
        </div>
    </form>
</body>
</html>
