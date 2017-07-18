<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 100px;
            height: 42px;
        }
        .auto-style2 {
            width: 253px;
            height: 42px;
        }
    </style>
    </asp:Content> 

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 style="border-width: 1px; border-color: #000066">
        PROPERTY EVALUATION SYSTEM ~ Designed by Varun Gaur</h2>
    
    <div id="cs1" style="border: 1px dashed grey; padding-left: 20px; padding-bottom: 20px; margin-top: 10px; background-color: #D3E2E2;">
        <h3 style="display: block; text-align: center; top: 166px; left: 525px;"><strong>ElECTIVE SERVICE II: ENCRYPTION/DECRYPTION</strong></h3>
        <div id="cs2" style="border: 1px dashed grey; padding-left: 20px; padding-bottom: 20px; margin-top: 10px; background-color: #009999; display: block;">
            
            <p style="padding-left: 9px; width: 14%; background-color: #FFFFCC;">Encryption Module</p>
            
            <p><strong>URL:&nbsp; </strong><a href="http://localhost:49894/EncryptDecryptSrvc.svc">http://localhost:49894/EncryptDecryptSrvc.svc</a></p>
        
            <p><strong>Method Signature: </strong><span style="font-size:11.0pt;line-height:115%;
                font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
                SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
                mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
                mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"> string encrypt(string plainText) </span> </p>
                        <p><strong>Description: </strong><span style="font-size:11.0pt;line-height:115%;
                font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
                SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
                mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
                mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">
                This service implements Encryption/Decryption algorithm. Plain Text passed to this service will be **Encrypted** and returned on UI. This service uses manual keyless ASCII based encryption technique.</span></p>
       
            <table class="TableHeader" id="tblHeader" border="1" runat="server" width="95%" style="background-color: #3366CC">
                <tr class="TableRowHeader">
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Plain Text" ForeColor="White" style="font-weight: 700" Width="100%"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="plainText" Width="95%" runat="server" TextMode="multiline" Columns="50" Rows="2"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <br />
            <asp:Button ID="Button2" Text="Encrypt" OnClick="TestRequiredService1" runat="server" Height="32px" Width="112px" style="display: block; float: none; top: 566px; left: 608px;"/>
            <br />

            <table class="TableHeader" id="Table1" border="1" runat="server" width="95%" style="background-color: #3366CC">
                <tr class="TableRowHeader">
                    <td style="WIDTH: 100px">
                        <asp:Label ID="Label1" runat="server" Text="Cipher Text" ForeColor="White" style="font-weight: 700" Width="100%"></asp:Label>
                    </td>
                    <td style="WIDTH: 253px">
                        <asp:TextBox ID="cipherText" Width="95%" runat="server" TextMode="multiline" Columns="50" Rows="2" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
            </table>

        </div>


        <div id="cs3" style="border: 1px dashed grey; padding-left: 20px; padding-bottom: 20px; margin-top: 10px; background-color: #00CCFF; display: block;">
            
            <p style="padding-left: 9px; width: 14%; background-color: #FFFFCC;">Decryption Module</p>
            
            <p><strong>URL:&nbsp; </strong><a href="http://localhost:49894/EncryptDecryptSrvc.svc">http://localhost:49894/EncryptDecryptSrvc.svc</a></p>
        
            <p><strong>Method Signature: </strong><span style="font-size:11.0pt;line-height:115%;
                font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
                SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
                mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
                mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"> string encrypt(string plainText) </span> </p>
                        <p><strong>Description: </strong><span style="font-size:11.0pt;line-height:115%;
                font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
                SimSun;mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
                mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
                mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">
                This service implements Encryption/Decryption algorithm. Cipher Text passed to this service will be **Decrypted** and returned on UI. 
                            This service uses manual keyless ASCII based encryption technique. </span></p>
       
            <table class="TableHeader" id="Table2" border="1" runat="server" width="95%" style="background-color: #3366CC">
                <tr class="TableRowHeader">
                    <td style="WIDTH: 100px">
                        <asp:Label ID="Label3" runat="server" Text="Cipher Text" ForeColor="White" style="font-weight: 700" Width="100%"></asp:Label>
                    </td>
                    <td style="WIDTH: 253px">
                        <asp:TextBox ID="CText" Width="95%" runat="server" TextMode="multiline" Columns="50" Rows="2"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <br />
            <asp:Button ID="Button1" Text="Decrypt" OnClick="TestRequiredService2" runat="server" Height="32px" Width="112px" style="display: block; float: none; top: 566px; left: 608px;"/>
            <br />

            <table class="TableHeader" id="Table3" border="1" runat="server" width="95%" style="background-color: #3366CC">
                <tr class="TableRowHeader">
                    <td style="WIDTH: 100px">
                        <asp:Label ID="Label4" runat="server" Text="Plain Text" ForeColor="White" style="font-weight: 700" Width="100%"></asp:Label>
                    </td>
                    <td style="WIDTH: 253px">
                        <asp:TextBox ID="PText" Width="95%" runat="server" TextMode="multiline" Columns="50" Rows="2" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
            </table>

        </div>


    </div>

    </asp:Content>
