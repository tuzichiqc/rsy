<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<html>
<head>
  <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="clander/date.js"></script>
<script type="text/javascript" src="clander/setday.js"></script>
<script>document.onclick=function() {}</script>
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE4 {
	font-size: 12px;
	color: #1F4A65;
	font-weight: bold;
}

a:link {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;

}
a:visited {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:hover {
	font-size: 12px;
	color: #FF0000;
	text-decoration: underline;
}
a:active {
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.STYLE7 {font-size: 12}

-->
</style>

<script>
    function viewAuth(){
        var authno = document.getElementById("authno").value;
        if (authno == ""){
            alert("核准件编号不能为空")
            return;
        }
        var xhr = new  XMLHttpRequest();
        xhr.onreadystatechange = function (){
            if(xhr.readyState == 4&&xhr.status == 200){
                document.getElementById("authInfo").innerHTML = xhr.responseText;
            }
        }

        xhr.open("GET","servlet/viewAuth?_="+new Date().getTime()+"&authno="+authno,true);
        xhr.send();

    }
</script>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="30"><img src="images/tab_03.gif" width="15" height="30" /></td>
        <td width="1101" background="images/tab_05.gif"><img src="images/311.gif" width="16" height="16" /> <span class="STYLE4">银行核准类信息列表</span></td>
        <td width="281" background="images/tab_05.gif"><table border="0" align="right" cellpadding="0" cellspacing="0">
            <tr>
              <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"></td>
                  </tr>
              </table></td>
            </tr>
        </table></td>
        <td width="14"><img src="images/tab_07.gif" width="14" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr height="5">
          <td width="9" background="images/tab_12.gif">&nbsp;</td>
          <td bgcolor="#f3ffe3">&nbsp;</td>
          <td width="9" background="images/tab_16.gif">&nbsp;</td>
      </tr>
      <tr>
        <td width="9" background="images/tab_12.gif">&nbsp;</td>
        <td bgcolor="#f3ffe3">
        	<table width="99%" border="0" align="center" cellpadding="0" cellspacing="1">
        	    <tr>
        	       <td width="90"  nowrap class="STYLE1" align="right">核准件编号:</td>
				    <td class="class1_td alignleft" nowrap><input type="text" id="authno" name="authno" style="width:100px; height:20px; border:solid 1px #035551; color:#000000"></td>
        	    </tr>
        	    <tr>
        	        <td class="STYLE1" colspan="5" align="left">&nbsp;&nbsp;</td>
        	        <td nowrap class="STYLE1" align="right"><button style="width:68px;height:27px" onclick="viewAuth()" ><img src="images/query.jpg" /></button>&nbsp;&nbsp;<button style="width:68px;height:27px"><img src="images/clear.jpg" /></button>&nbsp;&nbsp;</td>
        	    </tr>
        	</table>
        </td>
        <td width="9" background="images/tab_16.gif">&nbsp;</td>
      </tr>
      <tr height="10">
          <td width="9" background="images/tab_12.gif">&nbsp;</td>
          <td bgcolor="#f3ffe3">&nbsp;</td>
          <td width="9" background="images/tab_16.gif">&nbsp;</td>
      </tr>
  </table>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9" background="images/tab_12.gif">&nbsp;</td>
        <td bgcolor="#f3ffe3"><table width="99%" id="dataTable" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#0e6f68" >


        </table></td>
        <td width="9" background="images/tab_16.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="29"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="29"><img src="images/tab_20.gif" width="15" height="29" /></td>
        <td background="images/tab_21.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        </table></td>
        <td width="14"><img src="images/tab_22.gif" width="14" height="29" /></td>
      </tr>
    </table></td>
  </tr>
</table>
<div id="authInfo"></div>
</body>
</html>
