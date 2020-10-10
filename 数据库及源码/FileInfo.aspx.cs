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
using System.IO;
using System.Text;
public partial class FileInfo : System.Web.UI.Page
{
    public string sql, dID;

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {


            sql = "select * from FileInfo where id=" + dID;
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            Label1.Text = dr["Addtime"].ToString();
            Label2.Text = dr["TitleName"].ToString();
            this.DIV1.InnerHtml = dr["FileDs"].ToString();
            Hidden1.Value = "files/" + dr["FilePath"].ToString();
            Hidden2.Value = dr["Ename"].ToString();
            Hidden3.Value = dr["FileName"].ToString();
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string fileName = Hidden3.Value + Hidden2.Value;

        string filePath = Server.MapPath(Hidden1.Value);//路径

        //以字符流的形式下载文件 

        FileStream fs = new FileStream(filePath, FileMode.Open);

        byte[] bytes = new byte[(int)fs.Length];

        fs.Read(bytes, 0, bytes.Length);

        fs.Close();

        Response.ContentType = "application/octet-stream";

        //通知浏览器下载文件而不是打开 

        Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(fileName, System.Text.Encoding.UTF8));

        Response.BinaryWrite(bytes);

        Response.Flush();

        Response.End();
    }
}
