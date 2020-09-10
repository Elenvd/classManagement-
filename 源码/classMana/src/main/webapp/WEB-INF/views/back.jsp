<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<script type="text/javascript">
alert("帐号密码错误，请重新输入");
window.history.back(-1); 
</script>
<%-- <jsp:forward page="/"></jsp:forward> --%>
