using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Cache["fullName"] != null)
        {
            Label37default0.Text = "Welcome back " + Cache["fullName"].ToString() + ". You have already logged in ";
        }

    }
    protected void TestRequiredService1(object sender, EventArgs e)
    {
        Label37default.Visible = false;
        if (string.IsNullOrEmpty(rs1str5default.Text) || string.IsNullOrEmpty(rs1str6default.Text) || string.IsNullOrEmpty(rs1str2default1.Text) || string.IsNullOrEmpty(rs1str2default0.Text))
        {
            Label37default.Text = "Please Enter all the fields";
            Label37default.Visible = true;
            return;

        }
        ServiceReference1.UserAccountCreationnewClient client = new ServiceReference1.UserAccountCreationnewClient();
        string output = client.createUserAcc(rs1strdefault.Text, rs1str0default.Text, rs1str1default.Text, DropDownList1.Text, rs1str2default.Text);
        if (output.Equals("Input values Cant be null"))
        {
            Label37default.Text = "Input fields cannot be empty or Null";
        }
        else if (output.Equals("Email Address already exists in the Database"))
        {
            Label37default.Text = "Email Address already exists in the Database. The User account has already been registered";
        }
        else
        {
            Label37default.Text = output;
            callSecondPage(output);
        }
        Label37default.Visible = true;


    }



    void callSecondPage(string output)
    {
        Cache["fullName"] = rs1strdefault.Text;
        Cache.Insert("fullName", rs1strdefault.Text, null);

        HttpCookie myCookies = new HttpCookie("UserInfo");
        myCookies["emailId"] = rs1str0default.Text;
        myCookies["city"] = rs1str5default.Text;
        myCookies["Zip"] = rs1str6default.Text;
        myCookies["lat"] = rs1str2default0.Text;
        myCookies["long"] = rs1str2default1.Text;
        myCookies["UserID"] = output;
        myCookies.Expires = DateTime.Now.AddMonths(6);
        Response.Cookies.Add(myCookies);
        Response.Redirect("SecondPage.aspx");
    }
}
