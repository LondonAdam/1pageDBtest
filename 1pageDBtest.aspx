<%@ Import Namespace="System" %>
<%@ Page Language="vb" Strict="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>holidays</title>


</head>
<body>

<h1>All about UK holidays!</h1>

    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Yr" HeaderText="Yr" SortExpression="Yr" />
            <asp:BoundField DataField="NoOfBankHolidays" HeaderText="NoOfBankHolidays" 
                SortExpression="NoOfBankHolidays" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="
Data Source=sara;
Initial Catalog=testDB01;
Persist Security Info=True;
User ID=testUser01;
Password=nicepw01!"
         providerName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tbl_bankHolidays]">
</asp:SqlDataSource>

    <div>
    

    </div>
    </form>
</body>
</html>
