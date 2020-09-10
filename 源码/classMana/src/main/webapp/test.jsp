<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>

<script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="static/js/jquery.dataTables.js"></script>
<link
	href="static/bootstrap-3.3.7-dist/css/jquery.dataTables.css"
	rel="stylesheet">
<!-- 引入样式 -->
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<!-- 引入时间控件 -->
<link
	href="static/bootstrap-3.3.7-dist/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<script src="static/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.js"></script>
<script
	src="static/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.min.js"></script>
<script
	src="static/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.zh-CN.js"></script>

</head>
  
  <body>
	<div class="TabBox">
		<table class="table table-hover" width="100%">
			<thead>
				<tr>
					<th class="nosort">Rendering engine</th>
					<th>Browser</th>
					<th>Platform(s)</th>
					<th>Engine version</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Trident</td>
					<td>Internet Explorer 4.0</td>
					<td>Win 95+</td>
					<td>4</td>
				</tr>
				<tr>
					<td>Trident</td>
					<td>Internet Explorer 5.0</td>
					<td>Win 95+</td>
					<td>5</td>
				</tr>
				<tr>
					<td>Trident</td>
					<td>Internet Explorer 5.5</td>
					<td>Win 95+</td>
					<td>5.5</td>
				</tr>
				<tr>
					<td>Trident</td>
					<td>Internet Explorer 6</td>
					<td>Win 98+</td>
					<td>6</td>
				</tr>
			</tbody>
		</table>
	</div><!--TabBox-->
<script>
$(document).ready(function(){
    $('.table-hover').dataTable({
        "searching": false,  //是否允许Datatables开启本地搜索
        "paging": false,  //是否开启本地分页
        "lengthChange": false,  //是否允许用户改变表格每页显示的记录数
        "info": false,   //控制是否显示表格左下角的信息
        "columnDefs": [{
            "targets": 'nosort',  //列的样式名
            "orderable": false    //包含上样式名‘nosort’的禁止排序
        }],
        //跟数组下标一样，第一列从0开始，这里表格初始化时，第四列默认降序
        "order": [3]  //asc升序   desc降序  "order": [[ 3, "desc" ]]默认第四列为降序排列
    });
});
</script>
  </body>
</html>
