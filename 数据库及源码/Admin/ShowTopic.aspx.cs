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
public partial class Teachter_ShowTopic : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "计算机网络在线课堂";
        if (!IsPostBack)
        {
            int id = Int16.Parse(Request.QueryString["id"].ToString());

            BinderTopic();
            BinderReplay();
            data.RunSql("update  Topic set  YueduTimes=YueduTimes+1 where id=" + id);

        }
    }

    private void BinderTopic()
    {
        int id = Int16.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  Topic where id=" + id);
        dr.Read();
        Label1.Text = dr["Topic"].ToString();
        Label2.Text = dr["Addtime"].ToString();
        Label3.Text = dr["Content"].ToString();
        Label4.Text = dr["AddUser"].ToString();
        Image1.ImageUrl = "../files/" + dr["TouXiang"].ToString();


        Label6.Text = dr["HuifuTimes"].ToString();
        Label7.Text = dr["YueduTimes"].ToString();
    }
    private void BinderReplay()
    {
        int id = Int16.Parse(Request.QueryString["id"].ToString());
        string sql = "select * from  Replay where TopicId=" + id;
        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = ds.Tables[0].DefaultView;

        objPds.AllowPaging = true;
        objPds.PageSize = 5;

        int CurPage;
        if (Request.QueryString["Page"] != null)
            CurPage = Convert.ToInt32(Request.QueryString["Page"]);
        else
            CurPage = 1;

        objPds.CurrentPageIndex = CurPage - 1;
        lblCurrentPage.Text = CurPage.ToString();
        lblSumPage.Text = objPds.PageCount.ToString();

        if (!objPds.IsFirstPage)
        {
            this.hyfirst.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + 1 + "&id=" + id;
            lnkPrev.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1) + "&id=" + id;
        }

        if (!objPds.IsLastPage)
        {
            hylastpage.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + objPds.PageCount + "&id=" + id;

            lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1) + "&id=" + id;
        }

        this.DataList1.DataSource = objPds;
        this.DataList1.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            int id = Int16.Parse(Request.QueryString["id"].ToString());

            data.RunSql("insert into Replay(Replay,ReplayUser,TopicId)values('" + content1.Value + "','" + Session["Admin"].ToString() + "'," + id + ")");

            data.RunSql("update Topic set isReplay='1' where id=" + id);
            data.RunSql("update Topic set HuifuTimes=HuifuTimes+1  where id=" + id);

            Alert.AlertAndRedirect("回复成功！", "ShowTopic.aspx?id=" + id);
            BinderTopic();
            BinderReplay();
       
    }

}
