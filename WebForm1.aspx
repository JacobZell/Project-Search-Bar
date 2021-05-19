<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DropDownList ID="drpSearchType" runat="server" style="margin-left: 2px">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem Value="Course_ID">Course ID</asp:ListItem>
            <asp:ListItem Value="Course_Name">Course Name</asp:ListItem>
            <asp:ListItem Value="Professor_Name">Professor Name</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" OnClick="Button1_Click" Text="Search" />
        <p>
            <asp:Label ID="lblResults" runat="server" Text="Results Pint Here"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
