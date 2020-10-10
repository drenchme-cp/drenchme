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
public partial class Teachter_AddTiMu : System.Web.UI.Page
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
        if (DropDownList1.SelectedValue == "单选题")
        {
            TD6.Visible = false;

            TD1.Visible = true;
            TD2.Visible = true;
            TD3.Visible = true;
            TD4.Visible = true;
            TD5.Visible = true;
            string Title = content1.Value;
            string AnswerA = txtAnswerA.Text;
            string AnswerB = txtAnswerB.Text;
            string AnswerC = txtAnswerC.Text;
            string AnswerD = txtAnswerD.Text;
            string Answer = ddlAnswer.SelectedItem.Text;

            mydata.RunSql("insert into TiMu(Title,AnswerA,AnswerB,AnswerC,AnswerD,Answer,Mark,Type)values('" + content1.Value + "','" + txtAnswerA.Text + "','" + txtAnswerB.Text + "','" + txtAnswerC.Text + "','" + txtAnswerD.Text + "','" + ddlAnswer.SelectedItem.Text + "','" + txtScore.Text + "','" + DropDownList1.SelectedValue + "')");
            Alert.AlertAndRedirect("添加成功！", "TiMuLists.aspx");

        }
        else
        {
            TD6.Visible = true;

            TD1.Visible = false;
            TD2.Visible = false;
            TD3.Visible = false;
            TD4.Visible = false;
            TD5.Visible = false;
            string Title = content1.Value;

            string Answer = TextBox1.Text;

            mydata.RunSql("insert into TiMu(Title,Answer,Mark,Type)values('" + content1.Value + "','" + Answer + "','" + txtScore.Text + "','" + DropDownList1.SelectedValue + "')");
            Alert.AlertAndRedirect("添加成功！", "TiMuLists.aspx");

        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "单选题")
        {
            txtScore.Text = "2";

            TD6.Visible = false;

            TD1.Visible = true;
            TD2.Visible = true;
            TD3.Visible = true;
            TD4.Visible = true;
            TD5.Visible = true;
        }
       
      

    }
}
