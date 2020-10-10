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

public partial class Play : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            videoInfo();
        }
    }
    protected void videoInfo()
    {
        //编写SQL语句查询详细信息
        string sql = "select * from Video where id='" + Request.QueryString["id"].ToString() + "'";
        SqlDataReader sdr = data.GetDataReader(sql);
        sdr.Read();
        //获取路径
        string link = "files/" + sdr["ShiPinFilePath"].ToString();
        //显示播放器并可以播放
        this.Literal1.Text = operateMethod.GetFlashText(link);
    }
}
