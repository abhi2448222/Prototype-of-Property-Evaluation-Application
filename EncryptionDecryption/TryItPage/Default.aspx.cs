using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Serialization;


public partial class _Default : System.Web.UI.Page
{

    /* Service call for Encryption Elective Service !!
     * This is an Elective Service which I have done.*/
    protected void TestRequiredService1(object sender, EventArgs e)
    {
        cipherText.Text = "";
        ServiceReference1.EncryptDecryptSrvcClient proxy = new ServiceReference1.EncryptDecryptSrvcClient();
        try
        {
            // Creating the input Text 
            string inpText = plainText.Text;
            string cipText = proxy.encrypt(inpText);
            cipherText.Text = cipText;
        }
        catch (Exception ec)
        {
            cipherText.Text = ec.Message.ToString();
        }
    }


    /* Service call for Decrypting the Cipher Text */
    protected void TestRequiredService2(object sender, EventArgs e)
    {
        PText.Text = "";
        ServiceReference1.EncryptDecryptSrvcClient proxy = new ServiceReference1.EncryptDecryptSrvcClient();
        try
        {
            /* To validate the format of Latiutude and Longitude passed */
            string cipText = CText.Text;
            string opText = proxy.decrypt(cipText);
            PText.Text = opText;
        }
        catch (Exception ec)
        {
            /* Exception encountered due to invalid input . Please check the input passed !! */
            PText.Text = ec.Message.ToString();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }
}
