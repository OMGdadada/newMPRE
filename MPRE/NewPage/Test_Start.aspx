<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test_Start.aspx.cs" Inherits="NewPage_Test_Start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
    <div>
        <button onclick="OK()"></button>
    </div>
        <script>
            function OK() {
                window.opener.location.reload();
                window.close();
            }
        </script>
    </form>
</body>
</html>
