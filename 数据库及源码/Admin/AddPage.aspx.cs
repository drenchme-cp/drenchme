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
public partial class Teachter_AddPage : System.Web.UI.Page
{
    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string Sql = "insert into ShiJuan(ShiJuanName,PageFen)values('" + TextBox4.Text + "','" + TextBox5.Text + "')";
        mydata.RunSql(Sql);
        SqlDataReader dr;
        //单选题
        dr = mydata.GetDataReader("select top " + TextBox1.Text + "  * from TiMu  where  Type='单选题'    order by newid()");
        GridView1.DataSource = dr;
        GridView1.DataBind();
     
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlDataReader sdr;
        sdr = mydata.GetDataReader("select top 1 *  from ShiJuan    order by  ShiJuanID desc ");
        if (sdr.Read())
        {
            string id = sdr["ShiJuanID"].ToString();
            //单选题
            foreach (GridViewRow dr in GridView1.Rows)
            {

                mydata.RunSql("insert into ShiJuanDetail(ShiJuanID,Type,TitleID,Mark) values('" + id + "','单选题','" + int.Parse(((Label)dr.FindControl("Label3")).Text) + "','" + ((Label)dr.FindControl("Label4")).Text + "')");
            }
 
          
            Alert.AlertAndRedirect("生成成功！", "PageManger.aspx");

        }

    }


}
