
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub btnAdd_Click(sender As Object,
        e As EventArgs) Handles btnAdd.Click
        SqlDataSource1.InsertParameters("Email").
            DefaultValue = TextBox1.Text
        SqlDataSource1.InsertParameters("LastName").
            DefaultValue = TextBox2.Text
        SqlDataSource1.InsertParameters("FirstName").
            DefaultValue = TextBox3.Text
        SqlDataSource1.InsertParameters("Address").
            DefaultValue = TextBox4.Text()
        SqlDataSource1.InsertParameters("City").
            DefaultValue = TextBox5.Text
        SqlDataSource1.InsertParameters("State").
            DefaultValue = TextBox6.Text
        SqlDataSource1.InsertParameters("ZipCode").
            DefaultValue = TextBox7.Text
        SqlDataSource1.InsertParameters("PhoneNumber").
            DefaultValue = TextBox8.Text
        Try
            SqlDataSource1.Insert()
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox3.Text = ""
            TextBox4.Text = ""
            TextBox5.Text = ""
            TextBox6.Text = ""
            TextBox7.Text = ""
            TextBox8.Text = ""
        Catch ex As Exception
            lblError.Text = "A database error has occurred. " &
                ex.Message
        End Try
    End Sub
End Class
