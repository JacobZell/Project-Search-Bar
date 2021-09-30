<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link href="SearchStlye.css" rel="stylesheet" type="text/css" />
    <form id="form1" runat="server">


        <style>
            .container {
            margin:auto;
            height: 50vh;

            display: flex;
            align-items:center;
            justify-content: center;

            position:absolute;
            right:0;
            left:0;
            top:0;
            bottom:0;
            }
        </style>



        <div class ="container">
                <div id ="resultsLabel">
                    <asp:Label ID="lblResults" runat="server" Text="Results Pint Here"></asp:Label>
                 </div>  

                  <div id ="searchDropdown">
                     <asp:DropDownList ID="drpSearchType" 
                         runat="server">
                     <asp:ListItem>--Select--</asp:ListItem>
                     <asp:ListItem Value="Course_ID">Course ID</asp:ListItem>
                     <asp:ListItem Value="Course_Name">Course Name</asp:ListItem>
                     <asp:ListItem Value="Professor_Name">Professor Name</asp:ListItem>
                     </asp:DropDownList>
                </div>

               <div id ="searchBox">
                    <asp:TextBox ID="txtSearch" runat="server" BorderStyle="Groove"></asp:TextBox>
                </div>

                <div id ="searchButton">
                    <asp:Button ID="btnSearch" runat="server" OnClick="Button1_Click" Text="Search" BorderStyle="Groove" />
                </div>
            </div>


        

            
        <div id ="adminButton">
            <asp:Button ID="btnAdmin" runat="server" Text="Modify Courses" Visible="False" OnClick="btnAdmin_Click" />
            <asp:Button ID="btnAdmins" runat="server" OnClick="btnAdmins_Click" Text="Enable Admin" />
        </div>


        <div id ="courseGridview">
            <asp:GridView ID="gridviewCourses" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False" OnSelectedIndexChanged="gridviewCourses_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Course_ID" HeaderText="Course_ID" SortExpression="Course_ID" />
                    <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
                    <asp:BoundField DataField="Course_Description" HeaderText="Course_Description" SortExpression="Course_Description" />
                    <asp:BoundField DataField="Professor_Name" HeaderText="Professor_Name" SortExpression="Professor_Name" />
                    <asp:BoundField DataField="Lecture_Hours" HeaderText="Lecture_Hours" SortExpression="Lecture_Hours" />
                    <asp:BoundField DataField="Registered_Students" HeaderText="Registered_Students" SortExpression="Registered_Students" />
                    <asp:BoundField DataField="Review_of_Course" HeaderText="Review_of_Course" SortExpression="Review_of_Course" />
                    <asp:BoundField DataField="Video_Link" HeaderText="Video_Link" SortExpression="Video_Link" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Courses Database Connection %>" SelectCommand="SELECT * FROM [CoursesTable]"></asp:SqlDataSource>
        </div>
      

    </form>
</body>
</html>
