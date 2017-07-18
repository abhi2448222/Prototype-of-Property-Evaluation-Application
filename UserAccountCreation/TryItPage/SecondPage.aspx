<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SecondPage.aspx.cs" Inherits="SecondPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>&nbsp;<asp:Label ID="Label1cook" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
        <br />
        <br />
        YOU CAN ACCESS THESE FOLLOWING SERVICES : </strong>
        
         </div>
        
            <p>
            <asp:Button ID="Button3" Text="Get Current Weather Forecast" OnClick="TestRequiredServicehelper" runat="server" Width="242px" />
        </p>
        <div id="weathSolDiv" runat="server">
            <p>
                Current
                <label>&nbsp;Zipcode &nbsp</label>
            <asp:TextBox ID="rs1str" Width="134px" runat="server" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2zip0" Text="submit" OnClick="TestRequiredService1" runat="server" Width="77px" style="height: 26px" />
        </p>
            <p>
            Weather Forecast Output :<label>&nbsp</label>
            <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>
            </p>
        <p>
            <asp:Label ID="Label23" runat="server" Text="City Name :" Visible="False"></asp:Label>
&nbsp; <asp:TextBox ID="rs1str0" Width="134px" runat="server" ReadOnly="True" Visible="False" />
            &nbsp;
            <asp:Label ID="Label24" runat="server" Text="Region : " Visible="False"></asp:Label>
&nbsp;
            <asp:TextBox ID="rs1str1" Width="134px" runat="server" ReadOnly="True" Visible="False" />
            &nbsp;<asp:Label ID="Label25" runat="server" Text="Country : " Visible="False"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="rs1str2" Width="134px" runat="server" ReadOnly="True" Visible="False" />
        </p>
        <p>
            <asp:Label ID="Label30" runat="server" Text="Current Temperature (°F) : " Visible="False"></asp:Label>
&nbsp;
            <asp:TextBox ID="rs1str3" Width="134px" runat="server" ReadOnly="True" Visible="False" />
            &nbsp;<asp:Label ID="Label31" runat="server" Text="Current Humidity  :" Visible="False"></asp:Label>
&nbsp;<asp:TextBox ID="rs1str4" Width="134px" runat="server" ReadOnly="True" Visible="False" />

        </p>
        <p>
            <asp:Label ID="Label26" runat="server" Text="Upcoming Weather Forecast :" Font-Bold="True" Visible="False"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label27" runat="server" Text="Upcoming days" Font-Bold="True" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp; 
            <asp:Label ID="Label28" runat="server" Text="Average Temperature (°F)&nbsp;" Font-Bold="True" Visible="False"></asp:Label>
            &nbsp;&nbsp;<strong>
            <asp:Label ID="Label29" runat="server" Text=" Average Humidity" Font-Bold="True" Visible="False"></asp:Label>
            </strong>

        </p>
       <p>
            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label><br />
            <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label><br />
            <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Visible="False"></asp:Label><br />
            <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Visible="False"></asp:Label><br />
            <asp:Label ID="Label13" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label14" runat="server" Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label15" runat="server" Visible="False"></asp:Label><br />
            <asp:Label ID="Label16" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label17" runat="server" Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="Label18" runat="server" Visible="False"></asp:Label><br />
            <asp:Label ID="Label19" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label20" runat="server" Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label21" runat="server" Visible="False"></asp:Label><br />

        </p>
        </div>
        
            <p>
            <asp:Button ID="Button4lat0" Text="Get Lat Long from Zipcode" OnClick="TestRequiredServicehelperzip" runat="server" Width="242px" />

        </p>
        <div id="ziptolatDiv" runat="server">
            <p>
                <label>Enter Zipcode &nbsp</label>
            <asp:TextBox ID="TextBox1zip" Width="134px" runat="server" />
            <asp:Button ID="Button2zip" Text="submit" OnClick="TestRequiredService1zip" runat="server" Width="77px" style="height: 26px" />
        </p>

            <asp:Label ID="Label37zip" runat="server" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>

        &nbsp;<asp:Label ID="Label34zip" runat="server" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label35zip" runat="server" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>

        <br />
        </div>

        
             <p>
            <asp:Button ID="Button4lat" Text="Get Zip Code from Lat Long" OnClick="TestRequiredServicehelperlat" runat="server" Width="242px" />

        </p>
        <div id="latlngtozipdiv" runat="server">
             <p>
            Enter a Valid Latitude :&nbsp;
            <asp:TextBox ID="rs1str5lat" Width="134px" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter a Valid Longitude :
            <asp:TextBox ID="rs1str6lat" Width="134px" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2lat" Text="submit" OnClick="TestRequiredService2lat" runat="server" Width="77px" />

        </p>
        <p>
            <asp:Label ID="Label33lat" runat="server" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>
&nbsp;
            <asp:Label ID="Label36lat" runat="server" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>

        </p>
        </div>
       
        <asp:Button ID="Button4sol" Text="Get SolarIntensity Index " OnClick="TestRequiredServicehelperSolar" runat="server" Width="242px" />
            <br />
        <br />
                 <div id="solardiv" runat="server">
            Enter a Valid Latitude :&nbsp;
            <asp:TextBox ID="rs1str5sol" Width="134px" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter a Valid Longitude :
            <asp:TextBox ID="rs1str6sol" Width="134px" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2sol" Text="submit" OnClick="TestRequiredService2sol" runat="server" Width="77px" style="height: 26px" />

        <p>
            <asp:Label ID="Label33sol" runat="server" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>
&nbsp;
            <asp:Label ID="Label32sol" runat="server" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>

        </p>
        </div>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Back" />
    </form>
</body>
</html>
