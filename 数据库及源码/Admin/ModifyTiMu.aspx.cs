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

public partial class Teachter_ModifyTiMu : System.Web.UI.Page
{
    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.QueryString["Type"].ToString() == "单选题")
            {
                TD6.Visible = false;

                TD1.Visible = true;
                TD2.Visible = true;
                TD3.Visible = true;
                TD4.Visible = true;
                TD5.Visible = true;

                SqlDataReader dr;
                dr = mydata.GetDataReader("select * from TiMu where id=" + Request.QueryString["id"].ToString());
                dr.Read();

                content1.Value = dr["Title"].ToString();
                txtAnswerA.Text = dr["AnswerA"].ToString();
                txtAnswerB.Text = dr["AnswerB"].ToString();
                txtAnswerC.Text = dr["AnswerC"].ToString();
                txtAnswerD.Text = dr["AnswerD"].ToString();
                this.txtScore.Text = dr["Mark"].ToString();

                TextBox2.Text = dr["Answer"].ToString();

            }
            else
            {
                SqlDataReader dr;
                dr = mydata.GetDataReader("select * from TiMu where id=" + Request.QueryString["id"].ToString());
                dr.Read();

                content1.Value = dr["Title"].ToString();

                this.txtScore.Text = dr["Mark"].ToString();

                TextBox1.Text = dr["Answer"].ToString();
                TD6.Visible = true;

                TD1.Visible = false;
                TD2.Visible = false;
                TD3.Visible = false;
                TD4.Visible = false;
                TD5.Visible = false;





            }



        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["Type"].ToString() == "单选题")
        {
            string Title = content1.Value;
            string AnswerA = txtAnswerA.Text;
            string AnswerB = txtAnswerB.Text;
            string AnswerC = txtAnswerC.Text;
            string AnswerD = txtAnswerD.Text;
            string Answer = ddlAnswer.SelectedItem.Text;
            TD6.Visible = false;

            TD1.Visible = true;
            TD2.Visible = true;
            TD3.Visible = true;
            TD4.Visible = true;
            TD5.Visible = true;

            mydata.RunSql("update TiMu set Title='" + Title + "',AnswerA='" + AnswerA + "',AnswerB='" + AnswerB + "',AnswerC='" + AnswerC + "',AnswerD='" + AnswerD + "',Answer='" + Answer + "',Mark='" + txtScore.Text + "'  where id=" + Request.QueryString["id"].ToString());

            Alert.AlertAndRedirect("修改成功！", "TiMuLists.aspx");

        }
        else
        {
            string Title = content1.Value;


            TD6.Visible = true;

            TD1.Visible = false;
            TD2.Visible = false;
            TD3.Visible = false;
            TD4.Visible = false;
            TD5.Visible = false;
            mydata.RunSql("update TiMu set Title='" + Title + "',Answer='" + TextBox1.Text + "',Mark='" + txtScore.Text + "'  where id=" + Request.QueryString["id"].ToString());

            Alert.AlertAndRedirect("修改成功！", "TiMuLists.aspx");
        }

    }
}
