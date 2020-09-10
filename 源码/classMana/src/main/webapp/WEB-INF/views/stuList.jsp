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

<title>学生列表</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- 引入jQuery -->
<script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
<!-- 引入样式 -->
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>

<body>
	<!-- 老师的模态框 -->
	<div class="modal fade" id="teaShowModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">班主任信息更新</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">工号</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="teaId_update_static"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">姓名</label>
							<div class="col-sm-10">
								<input type="text" name="teaName" class="form-control"
									id="teaName_update_input" placeholder="张三"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">年龄</label>
							<div class="col-sm-2">
								<input type="text" name="teaAge" class="form-control"
									id="teaAge_update_input"> <span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">性别</label>
							<div class="col-sm-10">
								<label class="radio-inline"> <input type="radio"
									name="teaSex" id="gender1_update_input" value="M"
									checked="checked"> 男
								</label> <label class="radio-inline"> <input type="radio"
									name="teaSex" id="gender2_update_input" value="F"> 女
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">系别</label>
							<div class="col-sm-10">
								<input type="text" name="teaDept" class="form-control"
									id="teaDept_update_input" placeholder="计算机"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">负责班级</label>
							<div class="col-sm-10">
								<input type="text" name="teaClass" class="form-control"
									id="teaClass_update_input" placeholder="14-3"> <span
									class="help-block"></span>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">手机号码</label>
							<div class="col-sm-10">
								<input type="text" name="teaPhone" class="form-control"
									id="teaPhone_update_input" placeholder=""> <span
									class="help-block"></span>
							</div>
						</div>
						
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="tea_update_btn">更新</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 学生修改的模态框 -->
	<div class="modal fade" id="stuUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">学生信息更新</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<!-- <div class="form-group">
							<label class="col-sm-2 control-label">学号</label>
							<div class="col-sm-10">
								<input type="text" name="stuId" class="form-control-static"
									id="stuId_update_static" placeholder="201401060325"> <span
									class="help-block"></span>
							</div>
						</div> -->
						<div class="form-group">
							<label class="col-sm-2 control-label">学号</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="stuId_update_static"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学生姓名</label>
							<div class="col-sm-10">
								<input type="text" name="stuName" class="form-control"
									id="stuName_update_input" placeholder="张三"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">年龄</label>
							<div class="col-sm-2">
								<input type="text" name="stuAge" class="form-control"
									id="stuAge_update_input"> <span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">性别</label>
							<div class="col-sm-10">
								<label class="radio-inline"> <input type="radio"
									name="stuSex" id="gender1_update_input" value="M"
									checked="checked"> 男
								</label> <label class="radio-inline"> <input type="radio"
									name="stuSex" id="gender2_update_input" value="F"> 女
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">系别</label>
							<div class="col-sm-10">
								<input type="text" name="stuDept" class="form-control"
									id="stuDept_update_input" placeholder="计算机"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">班级</label>
							<div class="col-sm-10">
								<input type="text" name="stuClass" class="form-control"
									id="stuClass_update_input" placeholder="14-3"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">家庭住址</label>
							<div class="col-sm-10">
								<input type="text" name="stuAddress" class="form-control"
									id="stuAddress_update_input" placeholder="XX省XX市"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">毕业学校</label>
							<div class="col-sm-10">
								<input type="text" name="stuSchool" class="form-control"
									id="stuSchool_update_input"> <span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">手机号码</label>
							<div class="col-sm-10">
								<input type="text" name="stuPhone" class="form-control"
									id="stuPhone_update_input" placeholder=""> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">班级职务</label>
							<div class="col-sm-10">
								<input type="text" name="stuPosition" class="form-control"
									id="stuPosition_update_input" placeholder="没有的话填普通"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">绩点</label>
							<div class="col-sm-10">
								<input type="text" name="stuGrp" class="form-control"
									id="stuGrp_update_input" placeholder=""> <span
									class="help-block"></span>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="stu_update_btn">更新</button>
				</div>
			</div>
		</div>
	</div>



	<!-- 员工添加的模态框 -->
	<div class="modal fade" id="stuAddModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">学生添加</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">学号</label>
							<div class="col-sm-10">
								<input type="text" name="stuId" class="form-control"
									id="stuId_add_input" placeholder="201401060325"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学生姓名</label>
							<div class="col-sm-10">
								<input type="text" name="stuName" class="form-control"
									id="stuName_add_input" placeholder="张三"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">年龄</label>
							<div class="col-sm-2">
								<input type="text" name="stuAge" class="form-control"
									id="stuAge_add_input"> <span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">性别</label>
							<div class="col-sm-10">
								<label class="radio-inline"> <input type="radio"
									name="stuSex" id="gender1_add_input" value="M"
									checked="checked"> 男
								</label> <label class="radio-inline"> <input type="radio"
									name="stuSex" id="gender2_add_input" value="F"> 女
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">系别</label>
							<div class="col-sm-10">
								<input type="text" name="stuDept" class="form-control"
									id="stuDept_add_input" placeholder="计算机"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">班级</label>
							<div class="col-sm-10">
								<input type="text" name="stuClass" class="form-control"
									id="stuClass_add_input" placeholder="14-3"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">家庭住址</label>
							<div class="col-sm-10">
								<input type="text" name="stuAddress" class="form-control"
									id="stuAddress_add_input" placeholder="XX省XX市"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">毕业学校</label>
							<div class="col-sm-10">
								<input type="text" name="stuSchool" class="form-control"
									id="stuSchool_add_input"> <span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">手机号码</label>
							<div class="col-sm-10">
								<input type="text" name="stuPhone" class="form-control"
									id="stuPhone_add_input" placeholder=""> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">班级职务</label>
							<div class="col-sm-10">
								<input type="text" name="stuPosition" class="form-control"
									id="stuPosition_add_input" placeholder="没有的话填普通"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">绩点</label>
							<div class="col-sm-10">
								<input type="text" name="stuGrp" class="form-control"
									id="stuGrp_add_input" placeholder=""> <span
									class="help-block"></span>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="stu_save_btn">保存</button>
				</div>
			</div>
		</div>
	</div>
	<%-- <a class="btn btn-primary" href="${PATH }/stus" role="button">Link</a> --%>
	<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1><a href="#">班级管理系统</a></h1>
			</div>
		</div>
		<!-- 按钮 -->
		<ul class="nav nav-tabs">
			<li role="presentation" class="active"><a>学生</a></li>
			<li role="presentation" ><a href="couList">课程</a></li>
			<button class="btn btn-link" id="tea_show_btn">班主任</button>
		</ul>
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<button class="btn btn-primary" id="stu_add_modal_btn">新增</button>
				<button class="btn btn-danger" id="stu_delete_all_btn">删除</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table table-striped" id="stus_table">
					<thead>
						<tr>
							<th><input type="checkbox" id="check_all" /></th>

							<th>姓名</th>
							<th>学号</th>
							<th>年龄</th>
							<th>系别</th>
							<th>班级</th>
							<th>职务</th>
							<th>操作</th>
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
	<script type="text/javascript">
		var totalRecord,
			currentPage;
		//1、页面加载完成以后，直接去发送ajax请求,要到分页数据
		$(function() {
			//去首页
			to_page(1);
		});
		function to_page(pn) {
			$.ajax({
				url : "${APP_PATH}/stus",
				data : "pn=" + pn,
				type : "GET",
				success : function(result) {
					//console.log(result);
					//1、解析并显示学生数据
					build_stus_table(result);
					//2、解析并显示分页信息
					build_page_info(result);
					//3、解析显示分页条数据
					build_page_nav(result);
				}
			});
		}
		function build_stus_table(result) {
			$("#stus_table tbody").empty();
			var stus = result.extend.pageInfo.list;
			$.each(stus, function(index, item) {
				var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
				var stuNameTd = $("<td></td>").append(item.stuName);
				var stuIdTd = $("<td></td>").append(item.stuId);
				var stuAgeTd = $("<td></td>").append(item.stuAge);
				var stuDeptTd = $("<td></td>").append(item.stuDept);
				var stuClassTd = $("<td></td>").append(item.stuClass);
				var stuPositionTd = $("<td></td>").append(item.stuPosition);
				var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
					.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑/详细信息");
				//为编辑按钮添加一个自定义的属性，来表示当前学生id
				editBtn.attr("edit-id", item.stuId);
				var scoBtn = $("<button></button>").addClass("btn btn-primary btn-sm sco_btn")
					.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("查看该学生成绩");
				//为编辑按钮添加一个自定义的属性，来表示当前学生id
				scoBtn.attr("edit-id", item.stuId);
				var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
					.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
				//为删除按钮添加一个自定义的属性来表示当前删除的学生id
				delBtn.attr("del-id", item.stuId);
				var btnTd = $("<td></td>").append(editBtn).append(" ").append(scoBtn).append(" ").append(delBtn);
				$("<tr></tr>").append(checkBoxTd)
					.append(stuNameTd)
					.append(stuIdTd)
					.append(stuAgeTd)
					.append(stuDeptTd)
					.append(stuClassTd)
					.append(stuPositionTd)
					.append(btnTd)
					.appendTo("#stus_table tbody");
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
	
		//点击新增按钮弹出模态框。
		$("#stu_add_modal_btn").click(function() {
			reset_form("#stuAddModal form");
			$("#stuAddModal").modal({
				backdrop : "static"
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
	
			//3、校验年龄信息
			var stuAge = $("#stuAge_add_input").val();
			var regAge = /^\d{1,2}$/;
			if (!regAge.test(stuAge)) {
				show_validate_msg("#stuAge_add_input", "error", "年龄在0-100之间");
				return false;
			} else {
				show_validate_msg("#stuAge_add_input", "success", "");
			}
			;
	
	
			//其他的不为空
			var stuDept = $("#stuDept_add_input").val();
			if (stuDept.length == 0) {
				show_validate_msg("#stuDept_add_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#stuDept_add_input", "success", "");
			}
			;
	
			var stuClass = $("#stuClass_add_input").val();
			if (stuClass.length == 0) {
				show_validate_msg("#stuClass_add_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#stuClass_add_input", "success", "");
			}
			;
	
			var stuAddress = $("#stuAddress_add_input").val();
			if (stuAddress.length == 0) {
				show_validate_msg("#stuAddress_add_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#stuAddress_add_input", "success", "");
			}
			;
	
			var stuSchool = $("#stuSchool_add_input").val();
			if (stuSchool.length == 0) {
				show_validate_msg("#stuSchool_add_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#stuSchool_add_input", "success", "");
			}
			;
	
	
			//4.校验手机号码
			var stuPhone = $("#stuPhone_add_input").val();
			var regPhone = /^1[3,4,5,7,8]\d{9}$/;
			if (!regPhone.test(stuPhone)) {
				show_validate_msg("#stuPhone_add_input", "error", "手机号不存在");
				return false;
			} else {
				show_validate_msg("#stuPhone_add_input", "success", "");
			}
			;
	
			var stuPosition = $("#stuPosition_add_input").val();
			if (stuPosition.length == 0) {
				show_validate_msg("#stuPosition_add_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#stuPosition_add_input", "success", "");
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
	
		$("#stuId_add_input").change(function() {
			//发送ajax请求校验用户名是否可用
			var stuId = this.value;
			$.ajax({
				url : "${APP_PATH}/checkuser",
				data : "stuId=" + stuId,
				type : "POST",
				success : function(result) {
					if (result.code == 100) {
						show_validate_msg("#stuId_add_input", "success", "用户名可用");
						$("#stu_save_btn").attr("ajax-va", "success");
					} else {
						show_validate_msg("#stuId_add_input", "error", result.extend.va_msg);
						$("#stu_save_btn").attr("ajax-va", "error");
					}
				}
			});
		});
	
		$("#stu_save_btn").click(function() {
			if (!validate_add_form()) {
				return false;
			}
			;
			//1、判断之前的ajax学号校验是否成功。如果成功。
			if ($(this).attr("ajax-va") == "error") {
				return false;
			}
			$.ajax({
				url : "${APP_PATH}/stu",
				type : "POST",
				data : $("#stuAddModal form").serialize(),
				success : function(result) {
					//alert(result.msg);
					$("#stuAddModal").modal('hide');
					to_page(totalRecord);
				}
			});
		});
	
		$(document).on("click", ".edit_btn", function() {
			//alert("edit");
			getStu($(this).attr("edit-id"));
	
			$("#stu_update_btn").attr("edit-id", $(this).attr("edit-id"));
			//点击编辑按钮弹出模态框。
			$("#stuUpdateModal").modal({
				backdrop : "static"
			});
		});
		
		//查看成绩
		$(document).on("click", ".sco_btn", function() {
			var stuId=$(this).attr("edit-id");
			window.location.href="lookStuScore?stuId="+stuId
			
		});
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
					$("#stuName_update_input").val(stuData.stuName);
					$("#stuAge_update_input").val(stuData.stuAge);
					$("#stuUpdateModal input[name=gender]").val([ stuData.stuSex ]);
					$("#stuDept_update_input").val(stuData.stuDept);
					$("#stuClass_update_input").val(stuData.stuClass);
					$("#stuAddress_update_input").val(stuData.stuAddress);
					$("#stuSchool_update_input").val(stuData.stuSchool);
					$("#stuPhone_update_input").val(stuData.stuPhone);
					$("#stuPosition_update_input").val(stuData.stuPosition);
					$("#stuGrp_update_input").val(stuData.stuGrp);
				}
			});
		}
	
		function validate_update_form() {
			//2、拿到要校验的数据，使用正则表达式
			var stuName = $("#stuName_update_input").val();
			var regName = /^[\u4e00-\u9fa5]{2,5}$/;
			if (!regName.test(stuName)) {
				show_validate_msg("#stuName_update_input", "error", "用户名可以是2-5位中文");
				return false;
			} else {
				show_validate_msg("#stuName_update_input", "success", "");
			}
			;
	
			//3、校验年龄信息
			var stuAge = $("#stuAge_update_input").val();
			var regAge = /^\d{1,2}$/;
			if (!regAge.test(stuAge)) {
				show_validate_msg("#stuAge_update_input", "error", "年龄在0-100之间");
				return false;
			} else {
				show_validate_msg("#stuAge_update_input", "success", "");
			}
			;
	
	
			//其他的不为空
			var stuDept = $("#stuDept_update_input").val();
			if (stuDept.length == 0) {
				show_validate_msg("#stuDept_update_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#stuDept_update_input", "success", "");
			}
			;
	
			var stuClass = $("#stuClass_update_input").val();
			if (stuClass.length == 0) {
				show_validate_msg("#stuClass_update_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#stuClass_update_input", "success", "");
			}
			;
	
			var stuAddress = $("#stuAddress_update_input").val();
			if (stuAddress.length == 0) {
				show_validate_msg("#stuAddress_update_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#stuAddress_update_input", "success", "");
			}
			;
	
			var stuSchool = $("#stuSchool_update_input").val();
			if (stuSchool.length == 0) {
				show_validate_msg("#stuSchool_update_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#stuSchool_update_input", "success", "");
			}
			;
	
	
			//4.校验手机号码
			var stuPhone = $("#stuPhone_update_input").val();
			var regPhone = /^1[3,4,5,7,8]\d{9}$/;
			if (!regPhone.test(stuPhone)) {
				show_validate_msg("#stuPhone_update_input", "error", "手机号不存在");
				return false;
			} else {
				show_validate_msg("#stuPhone_update_input", "success", "");
			}
			;
	
			var stuPosition = $("#stuPosition_update_input").val();
			if (stuPosition.length == 0) {
				show_validate_msg("#stuPosition_update_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#stuPosition_update_input", "success", "");
			}
			;
	
			return true;
		}
	
		$("#stu_update_btn").click(function() {
			//alert("test")
			if (!validate_update_form()) {
				return false;
			}
			;
			if ($(this).attr("ajax-va") == "error") {
				return false;
			}
			$.ajax({
				url : "${APP_PATH}/stu/" + $(this).attr("edit-id"),
				type : "PUT",
				data : $("#stuUpdateModal form").serialize(),
				success : function(result) {
					//alert(result.msg);
					//1、关闭对话框
					$("#stuUpdateModal").modal("hide");
					//2、回到本页面
					to_page(currentPage);
				}
			});
		});
	
		//单个删除
		$(document).on("click", ".delete_btn", function() {
			//1、弹出是否确认删除对话框
			//alert($(this).attr("del-id"));学号弹出框
			//alert($(this).parents("tr").find("td:eq(1)").text());姓名
			var stuName = $(this).parents("tr").find("td:eq(1)").text();
			var stuId = $(this).attr("del-id");
			if (confirm("确认删除【" + stuName + "】吗？")) {
				//确认，发送ajax请求删除即可
				$.ajax({
					url : "${APP_PATH}/stu/" + stuId,
					type : "DELETE",
					success : function(result) {
						alert(result.msg);
						//回到本页
						to_page(currentPage);
					}
				});
			}
		});
	
		//完成全选/全不选功能
		$("#check_all").click(function() {
			//attr获取checked是undefined;
			//我们这些dom原生的属性；attr获取自定义属性的值；
			//prop修改和读取dom原生属性的值
			$(".check_item").prop("checked", $(this).prop("checked"));
		});
	
		//check_item
		$(document).on("click", ".check_item", function() {
			//判断当前选择中的元素是否5个
			var flag = $(".check_item:checked").length == $(".check_item").length;
			$("#check_all").prop("checked", flag);
		});
	
		//点击全部删除，就批量删除
		$("#stu_delete_all_btn").click(function() {
			//
			var stuNames = "";
			var del_idstr = "";
			$.each($(".check_item:checked"), function() {
				//this
				stuNames += $(this).parents("tr").find("td:eq(1)").text() + ",";
				//组装员工id字符串
				del_idstr += $(this).parents("tr").find("td:eq(2)").text() + "-";
			});
			//去除empNames多余的,
			stuNames = stuNames.substring(0, stuNames.length - 1);
			//去除删除的id多余的-
			del_idstr = del_idstr.substring(0, del_idstr.length - 1);
			if (confirm("确认删除【" + del_idstr + "】吗？")) {
				//发送ajax请求删除
				$.ajax({
					url : "${APP_PATH}/stu/" + del_idstr,
					type : "DELETE",
					success : function(result) {
						alert(result.msg);
						//回到当前页面
						to_page(currentPage);
					}
				});
			}
		});
		
		$("#tea_show_btn").click(function() {
			getTea(54088);
			$("#teaShowModal").modal({
				backdrop : "static"
			});
		});
		
		function getTea(id) {
			$.ajax({
				url : "${APP_PATH}/tea/" + id,
				type : "GET",
				success : function(result) {
					//console.log(result);
					var teaData = result.extend.tea;
					/* $("#empName_update_static").text(empData.empName);
					$("#email_update_input").val(empData.email);
					$("#empUpdateModal input[name=gender]").val([empData.gender]);
					$("#empUpdateModal select").val([empData.dId]); */
					$("#teaId_update_static").text(teaData.teaId);
					$("#teaName_update_input").val(teaData.teaName);
					$("#teaAge_update_input").val(teaData.teaAge);
					$("#teaUpdateModal input[name=gender]").val([ teaData.teaSex ]);
					$("#teaDept_update_input").val(teaData.teaDept);
					$("#teaClass_update_input").val(teaData.teaClass);
					$("#teaPhone_update_input").val(teaData.teaPhone);
				}
			});
		}
		$("#tea_update_btn").click(function() {
			$.ajax({
				url : "${APP_PATH}/tea/"+"54088" ,
				type : "PUT",
				data : $("#teaShowModal form").serialize(),
				success : function(result) {
					alert(result.msg);
					//1、关闭对话框
					$("#teaShowModal").modal("hide");
					//2、回到本页面
					to_page(currentPage);
				}
			});
		});
	</script>
</body>
</html>