﻿using System;
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

public partial class NewsInfo : System.Web.UI.Page
{

    public string sql, dID;

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "计算机网络在线课堂";
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
            sql = "select * from News where id=" + dID;
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            Label1.Text = dr["Addtime"].ToString();
            Label2.Text =  dr["name"].ToString() ;
            this.DIV1.InnerHtml = dr["content"].ToString();
        }

    }

}
