<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link href="SearchStlye.css" rel="stylesheet" type="text/css" />
    <form id="form1" runat="server">


        <div class ="outer">
                <div id ="searchButton">
                    <asp:Button class="center" ID="btnSearch" runat="server" OnClick="Button1_Click" Text="Search" BorderStyle="Groove" />
                </div>


               <div id ="searchBox">
                    <asp:TextBox class="center" ID="txtSearch" runat="server" BorderStyle="Groove"></asp:TextBox>
                </div>


                <div id ="searchDropdown">
                     <asp:DropDownList ID="drpSearchType" 
                         runat="server" 
                         class="center">
                     <asp:ListItem>--Select--</asp:ListItem>
                     <asp:ListItem Value="Course_ID">Course ID</asp:ListItem>
                     <asp:ListItem Value="Course_Name">Course Name</asp:ListItem>
                     <asp:ListItem Value="Professor_Name">Professor Name</asp:ListItem>
                     </asp:DropDownList>
                </div>
            </div>

        <div id ="resultsLabel">
            <asp:Label ID="lblResults" runat="server" Text="Results Pint Here"></asp:Label>
        </div>

            
        <div id ="adminButton">
            <asp:Button ID="btnAdmin" runat="server" Text="Modify Courses" Visible="False" />
        </div>


        <div id ="courseGridview">
            <asp:GridView ID="gridviewCourses" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Course_ID" HeaderText="Course_ID" SortExpression="Course_ID" />
                    <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
                    <asp:BoundField DataField="Course_Description" HeaderText="Course_Description" SortExpression="Course_Description" />
                    <asp:BoundField DataField="Professor_Name" HeaderText="Professor_Name" SortExpression="Professor_Name" />
                    <asp:BoundField DataField="Lecture_Hours" HeaderText="Lecture_Hours" SortExpression="Lecture_Hours" />
                    <asp:BoundField DataField="Registered_Students" HeaderText="Registered_Students" SortExpression="Registered_Students" />
                    <asp:BoundField DataField="Review_of_Course" HeaderText="Review_of_Course" SortExpression="Review_of_Course" />
                    <asp:BoundField DataField="Book_Link" HeaderText="Book_Link" SortExpression="Book_Link" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Courses Database Connection %>" SelectCommand="SELECT * FROM [CoursesTable]"></asp:SqlDataSource>
        </div>
      

    </form>
</body>
</html>
