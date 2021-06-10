<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REgistration.aspx.cs" Inherits="WebApp1Demo.REgistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Gender" runat="server" Text="Gender"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList></td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMobile" runat="server" Text="Mobile No"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" TextMode="Number"></asp:TextBox></td>
                    
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lblState" runat="server" Text="State"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>AP</asp:ListItem>
                            <asp:ListItem>TS</asp:ListItem>
                            <asp:ListItem>KL</asp:ListItem>
                        </asp:DropDownList> </td>
                    
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lblDOJ" runat="server" Text="Date of Joining"></asp:Label></td>
                    <td>
                        <asp:Calendar ID="calDOJ" runat="server"></asp:Calendar>
                     </td>
                    
                      <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></td>
                    
                </tr>
                      <tr>
                    <td>
                        Employee Image</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                          </td>
                    
                </tr>
                </tr>
                      <tr>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
                          </td>
                    <td>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                          </td>
                    
                </tr>
                </table>

            <div>
                <asp:Label ID="lblEmpdetail" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
