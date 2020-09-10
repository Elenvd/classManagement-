<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生成绩</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
    
	<!-- 引入jQuery -->
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
<link href="static/bootstrap-3.3.7-dist/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script src="static/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.js"></script>
<script src="static/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.min.js"></script>
<script src="static/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.zh-CN.js"></script>

  </head>
  
  <body>
  <!-- 成绩添加 -->
  <div class="modal fade" id="scoAddModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">学生成绩添加</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">课程号</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="couId_add_static"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">课程名</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="couName_add_static"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学号</label>
							<div class="col-sm-6">
								<input type="text" name="stuId" class="form-control"
									id="stuId_add_input"> <span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学生姓名</label>
							<div class="col-sm-6">
								<input type="text" name="stuName" class="form-control"
									id="stuName_add_input"> <span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">分数</label>
							<div class="col-sm-10">
								<input type="text" name="scoSco" class="form-control"
									id="scoSco_add_input" > <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">出勤次数</label>
							<div class="col-sm-10">
								<input type="text" name="scoAtt" class="form-control"
									id="scoAtt_add_input" > <span
									class="help-block"></span>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="sco_save_btn">保存</button>
				</div>
			</div>
		</div>
	</div>
 
 	<div class="modal fade" id="scoUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">学生成绩修改</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">课程号</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="couId_update_static"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">课程名</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="couName_update_static"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学号</label>
							<div class="col-sm-6">
								<p class="form-control-static" id="stuId_update_static"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学生姓名</label>
							<div class="col-sm-6">
								<p class="form-control-static" id="stuName_update_static"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">分数</label>
							<div class="col-sm-10">
								<input type="text" name="scoSco" class="form-control"
									id="scoSco_update_input" > <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">出勤次数</label>
							<div class="col-sm-10">
								<input type="text" name="scoAtt" class="form-control"
									id="scoAtt_update_input" > <span
									class="help-block"></span>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="sco_update_btn">更新</button>
				</div>
			</div>
		</div>
	</div> 
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
			<li role="presentation"><a href="javascript:history.back();">返回课程列表</a></li>
		</ul>
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<button class="btn btn-primary" id="sco_add_modal_btn">新增学生成绩</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="scos_table">
					<thead>
						<tr>
							<th>课程号</th>
							<th>课程名</th>
							<th>学号</th>
							<th>学生姓名</th>
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
<%--     ${couId } --%>
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
				url : "${APP_PATH}/scos?couId=" +${couId },
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
				editBtn.attr("edit-id", item.student.stuId); */
				var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
					.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
				//为删除按钮添加一个自定义的属性来表示当前删除的学生id
				delBtn.attr("del-id", item.stuId);
				/* var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn); */
				var btnTd = $("<td></td>").append(delBtn);
				$("<tr></tr>")
					.append(couIdTd)
					.append(couNameTd)
					.append(stuIdTd)
					.append(stuNameTd)
					.append(scoScoTd)
					.append(scoAttTd)
					.append(btnTd)
					.appendTo("#scos_table tbody");
			});
		}
		
		//解析显示分页信息
		function build_page_info(result) {
			$("#page_info_area").empty();
			$("#page_info_area").append("当前" + result.extend.pageInfo.pageNum + "页,总" +
				result.extend.pageInfo.pages + "页,共" +
				result.extend.pageInfo.total + "个学生");
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
		
		function reset_form(ele) {
			$(ele)[0].reset();
			//清空表单样式
			$(ele).find("*").removeClass("has-error has-success");
			$(ele).find(".help-block").text("");
		}
		
		$("#sco_add_modal_btn").click(function() {
			reset_form("#scoAddModal form");
			$("#couId_add_static").text(cI);
			$("#couName_add_static").text(cN);
			$("#scoAddModal").modal({
				backdrop : "static"
			});
		});
		
		$("#stuId_add_input").change(function() {
			//发送ajax通过查询给出姓名
			var stuId = this.value;
			$.ajax({
				url : "${APP_PATH}/checkstuId",
				data : "stuId=" + stuId,
				type : "POST",
				success : function(result) {
					if (result.code == 100) {
						$("#stuName_add_input").val(result.extend.student.stuName);
					}else{
						$("#stuName_add_input").val("");
					}
				}
			});
		});
		
		//学生信息保存
		$("#sco_save_btn").click(function() {
			 if (!validate_add_form()) {
				return false;
			}
			;
			//1、判断之前的ajax学号校验是否成功。如果成功。
			if ($(this).attr("ajax-va") == "error") {
				return false;
			} 
			 $.ajax({
				url : "${APP_PATH}/sco?couId=" +${couId },
				type : "POST",
				data : $("#scoAddModal form").serialize(),
				success : function(result) {
					if(result.code==100){
					$("#scoAddModal").modal('hide');
					to_page(totalRecord);
					}
					//alert(result.msg);
					else{
					show_validate_msg("#stuId_add_input", "error", result.extend.msg);
					}
					
					
				}
			});
		});
		
		//校验表单数据
		function validate_add_form() {
			//1.验证学号
			var stuId = $("#stuId_add_input").val();
			var regId = /^.{12}$/;
			if (!regId.test(stuId)) {
				show_validate_msg("#stuId_add_input", "error", "学号必须12位");
				return false;
			} else {
				show_validate_msg("#stuId_add_input", "success", "");
			}
			;
			//2、拿到要校验的数据，使用正则表达式
			var stuName = $("#stuName_add_input").val();
			var regName = /^[\u4e00-\u9fa5]{2,5}$/;
			if (!regName.test(stuName)) {
				show_validate_msg("#stuName_add_input", "error", "用户名可以是2-5位中文");
				return false;
			} else {
				show_validate_msg("#stuName_add_input", "success", "");
			}
			;
			var scoSco = $("#scoSco_add_input").val();
			if (scoSco.length == 0) {
				show_validate_msg("#scoSco_add_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#scoSco_add_input", "success", "");
			}
			;
			
			var scoAtt = $("#scoAtt_add_input").val();
			if (scoAtt.length == 0) {
				show_validate_msg("#scoAtt_add_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#scoAtt_add_input", "success", "");
			}
			;
			return true;
		}
		//显示校验结果的提示信息
		function show_validate_msg(ele, status, msg) {
			//清除当前元素的校验状态
			$(ele).parent().removeClass("has-success has-error");
			$(ele).next("span").text("");
			if ("success" == status) {
				$(ele).parent().addClass("has-success");
				$(ele).next("span").text(msg);
			} else if ("error" == status) {
				$(ele).parent().addClass("has-error");
				$(ele).next("span").text(msg);
			}
		}
		
		/* $(document).on("click", ".edit_btn", function() {
			//alert("edit");
			getStu($(this).attr("edit-id"));
			$("#couId_update_static").text(cI);
			$("#couName_update_static").text(cN);
			$("#sco_update_btn").attr("edit-id", $(this).attr("edit-id"));
			//点击编辑按钮弹出模态框。
			$("#scoUpdateModal").modal({
				backdrop : "static"
			});
		}); */
		function getStu(id) {
			$.ajax({
				url : "${APP_PATH}/stu/" + id,
				type : "GET",
				success : function(result) {
					//console.log(result);
					var stuData = result.extend.stu;
					/* $("#empName_update_static").text(empData.empName);
					$("#email_update_input").val(empData.email);
					$("#empUpdateModal input[name=gender]").val([empData.gender]);
					$("#empUpdateModal select").val([empData.dId]); */
					$("#stuId_update_static").text(stuData.stuId);
					$("#stuName_update_static").text(stuData.stuName);
					
				}
			});
		}
		
		//单个删除
		$(document).on("click", ".delete_btn", function() {
			//1、弹出是否确认删除对话框
			//alert($(this).attr("del-id"));学号弹出框
			//alert($(this).parents("tr").find("td:eq(4)").text());//姓名
			var stuName = $(this).parents("tr").find("td:eq(3)").text();
			var stuId = $(this).attr("del-id");
			if (confirm("确认删除【" + stuName + "】吗？")) {
				//确认，发送ajax请求删除即可
				$.ajax({
					url : "${APP_PATH}/sco?couId=" +${couId }+"&stuId="+stuId,
					type : "DELETE",
					success : function(result) {
						alert(result.msg);
						//回到本页
						to_page(currentPage);
					}
				});
			}
		});
	</script>
</body>
</html>
