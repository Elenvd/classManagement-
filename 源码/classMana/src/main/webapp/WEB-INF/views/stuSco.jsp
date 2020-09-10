<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>${stuId }成绩</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>

<!-- 引入jQuery -->
<script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="static/js/jquery.dataTables.js"></script>
<link href="static/bootstrap-3.3.7-dist/css/jquery.dataTables.css"
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
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>
					<a href="#">班级管理系统</a>
				</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<ul class="nav nav-tabs">
			<li role="presentation" class="active"><a>成绩</a></li>
			<li role="presentation"><a href="javascript:history.back();">返回学生列表</a></li>
		</ul>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="scos_table">
					<thead>
						<tr>
							<th>学号</th>
							<th>学生姓名</th>
							<th>课程号</th>
							<th>课程名</th>
							<th>成绩</th>
							<th>出勤次数</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>
		</div>

		<!-- 显示分页信息 -->
		<div class="row">
			<!--分页文字信息  -->
			<div class="col-md-6" id="page_info_area"></div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area"></div>
		</div>
	</div>
	<%--  ${stuId } --%>
	<script type="text/javascript">
 	var totalRecord,
			currentPage;
		var cI,cN;
		//1、页面加载完成以后，直接去发送ajax请求,要到分页数据
		$(function() {
			//去首页
			to_page(1);
		});
		function to_page(pn) {
			$.ajax({
				url : "${APP_PATH}/stuscos?stuId=" +${stuId },
				data : "pn=" + pn,
				type : "GET",
				success : function(result) {
					//console.log(result);
					//1、解析并显示成绩数据
					build_scos_table(result);
					//2、解析并显示分页信息
					build_page_info(result);
					//3、解析显示分页条数据
					build_page_nav(result);
				}
			});
		}
		function build_scos_table(result) {
			$("#scos_table tbody").empty();
			var scos = result.extend.pageInfo.list;
			$.each(scos, function(index, item) {
				var couIdTd = $("<td></td>").append(item.course.couId);
				cI=item.course.couId;
				var couNameTd = $("<td></td>").append(item.course.couName);
				cN=item.course.couName;
				var stuIdTd = $("<td></td>").append(item.student.stuId);
				var stuNameTd = $("<td></td>").append(item.student.stuName);
				var scoScoTd = $("<td></td>").append(item.scoSco);
				var scoAttTd = $("<td></td>").append(item.scoAtt);
				/* var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
					.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑/详细信息");
				//为编辑按钮添加一个自定义的属性，来表示当前学生id
				editBtn.attr("edit-id", item.student.stuId);
				var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
					.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
				//为删除按钮添加一个自定义的属性来表示当前删除的学生id
				delBtn.attr("del-id", item.stuId);
				var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn); */
				$("<tr></tr>")
					.append(stuIdTd)
					.append(stuNameTd)
					.append(couIdTd)
					.append(couNameTd)
					.append(scoScoTd)
					.append(scoAttTd)
					/* .append(btnTd) */
					.appendTo("#scos_table tbody");
			});
		}
		
		//解析显示分页信息
		function build_page_info(result) {
			$("#page_info_area").empty();
			$("#page_info_area").append("当前" + result.extend.pageInfo.pageNum + "页,总" +
				result.extend.pageInfo.pages + "页,共" +
				result.extend.pageInfo.total + "门成绩");
			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
		}
		//解析显示分页条，点击分页要能去下一页....
		function build_page_nav(result) {
			//page_nav_area
			$("#page_nav_area").empty();
			var ul = $("<ul></ul>").addClass("pagination");
	
			//构建元素
			var firstPageLi = $("<li></li>").append($("<a></a>").append("首页"));
			var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
			if (result.extend.pageInfo.hasPreviousPage == false) {
				firstPageLi.addClass("disabled");
				prePageLi.addClass("disabled");
			} else {
				//为元素添加点击翻页的事件
				firstPageLi.click(function() {
					to_page(1);
				});
				prePageLi.click(function() {
					to_page(result.extend.pageInfo.pageNum - 1);
				});
			}
	
	
			var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
			var lastPageLi = $("<li></li>").append($("<a></a>").append("末页"));
			if (result.extend.pageInfo.hasNextPage == false) {
				nextPageLi.addClass("disabled");
				lastPageLi.addClass("disabled");
			} else {
				nextPageLi.click(function() {
					to_page(result.extend.pageInfo.pageNum + 1);
				});
				lastPageLi.click(function() {
					to_page(result.extend.pageInfo.pages);
				});
			}
	
			//添加首页和前一页 的提示
			ul.append(firstPageLi).append(prePageLi);
			//1,2，3遍历给ul中添加页码提示
			$.each(result.extend.pageInfo.navigatepageNums, function(index, item) {
	
				var numLi = $("<li></li>").append($("<a></a>").append(item));
				if (result.extend.pageInfo.pageNum == item) {
					numLi.addClass("active");
				}
				numLi.click(function() {
					to_page(item);
				});
				ul.append(numLi);
			});
			//添加下一页和末页 的提示
			ul.append(nextPageLi).append(lastPageLi);
	
			//把ul加入到nav
			var navEle = $("<nav></nav>").append(ul);
			navEle.appendTo("#page_nav_area");
		}
 </script>
</body>
</html>
