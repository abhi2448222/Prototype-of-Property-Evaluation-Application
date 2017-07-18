using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SecondPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        weathSolDiv.Visible = false;
        ziptolatDiv.Visible = false;
        latlngtozipdiv.Visible = false;
        solardiv.Visible = false;

        if (Cache["fullName"] != null)
        {
            Label1cook.Text = "Welcome " + Cache["fullName"].ToString();
        }
    }

    public void TestRequiredService1(object sender, EventArgs e)
    {
        reset();

        ForecastService.ForecastClient proxy = new ForecastService.ForecastClient();
        ForecastService.WeatherForecastObj str = proxy.GetWeatherData(rs1str.Text);


        if (str.name.Equals("No matching location found for this Zipcode"))
        {
            Label22.Text = str.name + " Please Enter a Valid Zipcode";
            Label22.Visible = true;
        }
        else
        {
            rs1str0.Text = str.name;
            Label23.Visible = true;
            rs1str0.Visible = true;

            rs1str1.Text = str.region;
            Label24.Visible = true;
            rs1str1.Visible = true;

            rs1str2.Text = str.country;
            Label25.Visible = true;
            rs1str2.Visible = true;

            rs1str3.Text = str.current_temp_f.ToString();
            Label30.Visible = true;
            rs1str3.Visible = true;

            rs1str4.Text = str.current_humidity.ToString();
            Label31.Visible = true;
            rs1str4.Visible = true;

            List<ForecastService.Date> dates = str.dates.ToList();

            Label26.Visible = true;
            Label27.Visible = true;
            Label28.Visible = true;
            Label29.Visible = true;

            Label1.Text = dates[0].date; Label1.Visible = true;
            Label2.Text = dates[0].avgtemp_f.ToString(); Label2.Visible = true;
            Label3.Text = dates[0].avghumidity.ToString(); Label3.Visible = true;
            Label4.Text = dates[1].date; Label4.Visible = true;
            Label5.Text = dates[1].avgtemp_f.ToString(); Label5.Visible = true;
            Label6.Text = dates[1].avghumidity.ToString(); Label6.Visible = true;
            Label7.Text = dates[2].date; Label7.Visible = true;
            Label8.Text = dates[2].avgtemp_f.ToString(); Label8.Visible = true;
            Label9.Text = dates[2].avghumidity.ToString(); Label9.Visible = true;
            Label10.Text = dates[3].date; Label10.Visible = true;
            Label11.Text = dates[3].avgtemp_f.ToString(); Label11.Visible = true;
            Label12.Text = dates[3].avghumidity.ToString(); Label12.Visible = true;
            Label13.Text = dates[4].date; Label13.Visible = true;
            Label14.Text = dates[4].avgtemp_f.ToString(); Label14.Visible = true;
            Label15.Text = dates[4].avghumidity.ToString(); Label15.Visible = true;
            Label16.Text = dates[5].date; Label16.Visible = true;
            Label17.Text = dates[5].avgtemp_f.ToString(); Label17.Visible = true;
            Label18.Text = dates[5].avghumidity.ToString(); Label18.Visible = true;
            Label19.Text = dates[6].date; Label19.Visible = true;
            Label20.Text = dates[6].avgtemp_f.ToString(); Label20.Visible = true;
            Label21.Text = dates[6].avghumidity.ToString(); Label21.Visible = true;



        }
        weathSolDiv.Visible = true;

    }
    public void reset()
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;

        Label12.Visible = false;
        Label13.Visible = false;
        Label14.Visible = false;
        Label15.Visible = false;
        Label16.Visible = false;
        Label17.Visible = false;
        Label18.Visible = false;
        Label19.Visible = false;
        Label20.Visible = false;
        Label21.Visible = false;


        Label22.Visible = false;
        Label23.Visible = false;
        rs1str0.Visible = false;
        Label24.Visible = false;
        rs1str1.Visible = false;
        Label25.Visible = false;
        rs1str2.Visible = false;
        Label30.Visible = false;
        rs1str3.Visible = false;
        Label31.Visible = false;
        rs1str4.Visible = false;
        Label27.Visible = false;
        Label28.Visible = false;
        Label29.Visible = false;
        Label26.Visible = false;
    }

    [Serializable]
    public class WeatherForecast
    {

        public string name { get; set; }

        public string region { get; set; }

        public string country { get; set; }

        public double current_temp_f { get; set; }

        public int current_humidity { get; set; }

        public List<Datesobjs> dates { get; set; }
    }
    public class Datesobjs
    {
        public string date { get; set; }
        public double avgtemp_f { get; set; }
        public double avghumidity { get; set; }
    }


    protected void TestRequiredServicehelper(object sender, EventArgs e)
    {
        HttpCookie myCookies = Request.Cookies["UserInfo"];
        if (myCookies != null)
        {
            rs1str.Text = myCookies["zip"];
            weathSolDiv.Visible = true;
        }
    }

    protected void TestRequiredService2lat(object sender, EventArgs e)
    {
        Label33lat.Visible = false;
        Label36lat.Visible = false;
        string buildUrl = string.Format("http://localhost:65386/LatLngAndZipConverter.svc/latLngtoZipCode?lat={0}&lng={1}", rs1str5lat.Text, rs1str6lat.Text);

        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(buildUrl);
        WebResponse response = request.GetResponse();
        Stream responseStream = response.GetResponseStream();

        StreamReader reader = new StreamReader(responseStream);
        string output = (reader.ReadToEnd());
        if (output.Contains("Invalid") || output.Contains("No ZIPCODE found within 20 miles"))
        {
            Label33lat.Text = output;
            Label33lat.Visible = true;
            latlngtozipdiv.Visible = true;
            return;
        }
        Label33lat.Text = "Output Zipcode : ";
        Label36lat.Text = output;
        Label33lat.Visible = true;
        Label36lat.Visible = true;
        latlngtozipdiv.Visible = true;
    }

    protected void TestRequiredServicehelperlat(object sender, EventArgs e)
    {
        //call lat to zip
        HttpCookie myCookies = Request.Cookies["UserInfo"];
        if (myCookies != null)
        {
            rs1str5lat.Text = myCookies["lat"];
            rs1str6lat.Text = myCookies["long"];
        }
        latlngtozipdiv.Visible = true;
    }

    protected void TestRequiredServicehelperzip(object sender, EventArgs e)
    {
        //call zip to latlong
        HttpCookie myCookies = Request.Cookies["UserInfo"];
        if (myCookies != null)
        {
            TextBox1zip.Text = myCookies["zip"];
        }
        ziptolatDiv.Visible = true;
    }

    protected void TestRequiredService1zip(object sender, EventArgs e)
    {
        Label34zip.Visible = false;
        Label35zip.Visible = false;
        Label37zip.Visible = false;

        string buildUrl = string.Format("http://localhost:55381/ZipCodeLatLngConverter.svc/zipcodeToLatLng?zipcode={0}", TextBox1zip.Text);

        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(buildUrl);
        WebResponse response = request.GetResponse();
        Stream responseStream = response.GetResponseStream();

        StreamReader reader = new StreamReader(responseStream);
        string output = (reader.ReadToEnd());
        if (output.Contains("Invalid Zipcode"))
        {
            Label37zip.Text = output;
            Label37zip.Visible = true;
            ziptolatDiv.Visible = true;
            return;

        }
        string[] values = output.Split('|');
        Label37zip.Text = "Output Latitude and Longitude Values : ";
        Label34zip.Text = values.GetValue(0).ToString();
        Label35zip.Text = values.GetValue(1).ToString();
        Label34zip.Visible = true;
        Label35zip.Visible = true;
        Label37zip.Visible = true;
        ziptolatDiv.Visible = true;
    }


    protected void TestRequiredServicehelperSolar(object sender, EventArgs e)
    {
        //Expand solIntensity index
        HttpCookie myCookies = Request.Cookies["UserInfo"];
        if (myCookies != null)
        {
            rs1str5sol.Text = myCookies["lat"];
            rs1str6sol.Text = myCookies["long"];
        }
        solardiv.Visible = true;
    }

    protected void TestRequiredService2sol(object sender, EventArgs e)
    {
        Label33sol.Visible = false;
        Label32sol.Visible = false;
        SolarEnergyService.SolarIntensityIndexClient proxy = new SolarEnergyService.SolarIntensityIndexClient();
        double output = proxy.getSolarIntensityIndex(rs1str5sol.Text, rs1str6sol.Text);
        if (output == -1)
        {
            Label33sol.Text = "Invalid Latitude Longitude Values. Please Enter the values in range (0 to +/- 90) for Latitude and (0 to +/- 180) for Longitude ";
            Label33sol.Visible = true;
        }
        else
        {
            Label33sol.Text = "Average Solar Intensity at the particular location : ";
            Label32sol.Text = output.ToString();
            Label33sol.Visible = true;
            Label32sol.Visible = true;
        }
        solardiv.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
