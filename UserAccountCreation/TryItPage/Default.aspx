<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title> Session Example</title>
</head>
<body>
<form id="form1" runat="server">
    <h2>
        CSE 445 - Assignment 5 - Abhishek Rao (1210425135)</h2>
    <div id="rs1" style="border: 1px dashed grey; padding-left: 20px; padding-bottom: 20px; margin-top: 10px;">
        <p><strong>CREATION OF NEW USER ACCOUNT</strong></p>
        <p>Description : This application implements the functionality of User account creation and allowing the user to access the Weather service, Solar service , Generation of Zipcode from Latitude and Longitude and&nbsp; Generation of Latitude , Longitude from Zipcode services . The Username is stored in cache and the user information such as zipcode, latitude, longitude is stored in cookie. All these information are accessed in the next page.</p>
        <p>

            <asp:Label ID="Label37default0" runat="server" Font-Bold="True" Font-Size="Large" Font-Italic="True">Welcome New User</asp:Label>

        </p>
        <p>
            <label>Enter Fullname &nbsp</label>
            <asp:TextBox ID="rs1strdefault" Width="180px" runat="server" style="margin-left: 33px" />
            &nbsp;</p>
        <p>
            Enter City<asp:TextBox ID="rs1str5default" Width="179px" runat="server" style="margin-left: 74px" />
            </p>
        <p>
            Enter ZipCode<asp:TextBox ID="rs1str6default" Width="179px" runat="server" style="margin-left: 44px" />
            </p>
        <p>
            Enter Email Address
            <asp:TextBox ID="rs1str0default" Width="175px" runat="server" style="margin-left: 8px" />
        </p>
        <p>
            Enter Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="rs1str1default" TextMode="Password" Width="175px" runat="server" style="margin-left: 8px" />
        </p>
        <p>
            Select a Security Question<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" style="margin-left: 24px" Width="288px">
                <asp:ListItem Selected="True">What is your Mother&#39;s maiden name?</asp:ListItem>
                <asp:ListItem>What is the name of your pet?</asp:ListItem>
                <asp:ListItem>Who was your favourite teacher at school?</asp:ListItem>
                <asp:ListItem>Which was your birthplace?</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            Answer to the Security Question
            <asp:TextBox ID="rs1str2default" Width="175px" runat="server" style="margin-left: 8px" />
        </p>
        <p>
            Enter Your Latitude
            <asp:TextBox ID="rs1str2default0" Width="175px" runat="server" style="margin-left: 8px" />
        </p>
        <p>
            Enter Your Longitude
            <asp:TextBox ID="rs1str2default1" Width="175px" runat="server" style="margin-left: 0px" />
        </p>
        <p>
            <asp:Button ID="Button1" Text="submit" OnClick="TestRequiredService1" runat="server" Width="138px" style="margin-left: 181px" />
        </p>
        <p>

            <asp:Label ID="Label37default" runat="server" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>

        </p>

        &nbsp;&nbsp;</div>
    </form>
</body>
</html>