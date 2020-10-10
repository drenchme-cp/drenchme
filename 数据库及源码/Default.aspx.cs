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
public partial class _Default : System.Web.UI.Page
{
    SqlHelper sqloperate = new SqlHelper();
    SqlHelper data = new SqlHelper();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {






            DataList2.DataSource = data.GetDataReader("select top 6  * from  Video   order by  id desc ");
            DataList2.DataBind();



            DataList3.DataSource = data.GetDataReader("select top 12  * from  FileInfo   order by  id desc ");
            DataList3.DataBind();

        }
    }
    protected string CutChar(string strChar, int intLength)
    {
        //取得自定义长度的字符串
        if (strChar.Length > intLength)
        { return strChar.Substring(0, intLength); }
        else
        { return strChar; }

    }

}
