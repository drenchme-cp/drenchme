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
public partial class ShowPage : System.Web.UI.Page
{
    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader sdr1 = mydata.GetDataReader("select * from  XueShengKaoShi where Pageid='" + id + "' and UserId='" + Session["UserId"].ToString() + "'");
            if (sdr1.Read())
            {
                Alert.AlertAndRedirect("你已经参加过这个考试了不能重复参加考试", "SelectPage.aspx");
            }
            else
            {
                GetPager();
                
            }
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
        Label15.Text = sdr["PageFen"].ToString();
        SqlDataReader dr;
        dr = mydata.GetDataReader("select c.id as id  , * from ShiJuanDetail a left  join ShiJuan b on a.ShiJuanID=b.ShiJuanID left join TiMu c on a.TitleID=c.id where b.ShiJuanID=" + id + "and a.Type='单选题' ");
        GridView1.DataSource = dr;
        GridView1.DataBind();

       
 

    }
    protected void Button1_ServerClick1(object sender, EventArgs e)
    {
        int ShiJuanId = int.Parse(Request.QueryString["id"].ToString());
        float Score = 0;
        float singlemark = float.Parse(((Label)GridView1.Rows[0].FindControl("Label4")).Text);
        foreach (GridViewRow dr in GridView1.Rows)
        {
            string str = "";
            if (((RadioButton)dr.FindControl("RadioButton1")).Checked)
            {
                str = "A";
            }
            else if (((RadioButton)dr.FindControl("RadioButton2")).Checked)
            {
                str = "B";
            }
            else if (((RadioButton)dr.FindControl("RadioButton3")).Checked)
            {
                str = "C";
            }
            else if (((RadioButton)dr.FindControl("RadioButton4")).Checked)
            {
                str = "D";
            }
            if (((Label)dr.FindControl("Label3")).Text.Trim() == str)
            {
                Score = Score + singlemark;

        
            }
            else
            {

             

            }
        }
      
 
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr3;
        dr3 = mydata.GetDataReader("select * from [Users] where id=" + int.Parse(Session["UserId"].ToString()) + "");
        dr3.Read();
        string UserName = dr3["XingMing"].ToString();
        string Userid = dr3["id"].ToString();
        mydata.RunSql("insert into Score(UserID,ShiJuanID,Score,ExamTime,UserName)values('" + int.Parse(Session["UserId"].ToString()) + "','" + int.Parse(Request.QueryString["id"].ToString()) + "','" + Score + "','" + DateTime.Now + "','" + UserName + "')");
        mydata.RunSql("insert into  XueShengKaoShi(Pageid,UserId)values('" + id + "','" + Userid + "')");
        Alert.AlertAndRedirect("答题成功！查看成绩！", "MyScore.aspx");

    }

}
