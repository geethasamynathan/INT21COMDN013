<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApp1Demo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 232px;
            background-color: #FF9999;
        }
        .auto-style2 {
            width: 49%;
            height: 237px;
            background-color: #FFCC66;
        }
        .auto-style3 {
            background-color: #FF9999;
        }
        .auto-style4 {
            height: 53px;
            background-color: #FF9999;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblUsername" runat="server" 
                        Text="Enter the Username"></asp:Label></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                </td>
            </tr>
        </table> 
    </form>
</body>
</html>
