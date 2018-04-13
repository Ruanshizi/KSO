<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verificationcode.aspx.cs" Inherits="Thegraduationproject.Verificationcode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <img id="VCodeImg" src="SecurityCode.ashx" alt="验证码" onclick="javascript:RefreshCode();" />
        </div>
    </form>
    <script type="text/javascript">
        function RefreshCode() {
            var random = Math.random();
            var img = document.getElementById("VCodeImg");
            img.src = "SecurityCode.ashx?" + random; //加上无意义的随机参数，浏览器才会认为是新地址，就会重新读取数据
        }
    </script>
</body>
</html>
