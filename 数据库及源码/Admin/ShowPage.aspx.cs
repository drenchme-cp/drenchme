using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Teachter_ShowPage : System.Web.UI.Page
{
    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetPager();
        }

    }
    /// <summary>
    /// 取得选择的试卷
    /// </summary>
    private void GetPager()
    {

        int id = int.Parse(Request.QueryString["id"].ToString());
        //单选题

        SqlDataReader sdr;
        sdr = mydata.GetDataReader("select  * from ShiJuan where  ShiJuanID=" + id);
        sdr.Read();
        lblShiJuanName.Text = sdr["ShiJuanName"].ToString();
        SqlDataReader dr;
        dr = mydata.GetDataReader("select  * from ShiJuanDetail a left  join ShiJuan b on a.ShiJuanID=b.ShiJuanID left join TiMu c on a.TitleID=c.id where b.ShiJuanID=" + id + "and a.Type='单选题' ");
        GridView1.DataSource = dr;
        GridView1.DataBind();

  
       
    }
}
