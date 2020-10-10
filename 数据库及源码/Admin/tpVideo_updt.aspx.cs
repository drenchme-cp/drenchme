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
public partial class Admin_tpVideo_updt : System.Web.UI.Page
{
    public string sql, dID;

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
          
            sql = "select * from Video where id=" + dID;
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            title.Text = dr["name"].ToString();
           content1.Value = dr["content"].ToString();
           TextBox5.Text = dr["ShiPinFilePath"].ToString();

           pic.Text = dr["ShiPinPhoto"].ToString();
           Image1.ImageUrl = "../files/" + dr["ShiPinPhoto"].ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sql = "update Video set name='" + title.Text.ToString().Trim() + "',content='" + content1.Value + "',ShiPinPhoto='" + pic.Text + "',ShiPinFilePath='"+TextBox5.Text+"'  where id=" + dID;
        data.RunSql(sql);
        Alert.AlertAndRedirect("修改成功", "VideoList.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(File2, "../files/");
        this.Label2.Visible = true;
        this.Label2.Text = up.Resup[Convert.ToInt32(res)];
        this.TextBox5.Text = up.s;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../files/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../files/" + pic.Text;
    }
}
