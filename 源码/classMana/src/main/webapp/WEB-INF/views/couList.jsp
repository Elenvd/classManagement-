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

<title>课程列表</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- 引入jQuery -->
<script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
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
<!-- 员工添加的模态框 -->
	<div class="modal fade" id="couAddModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">课程添加</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">课程号</label>
							<div class="col-sm-10">
								<input type="text" name="couId" class="form-control"
									id="couId_add_input" placeholder="1"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">课程名</label>
							<div class="col-sm-10">
								<input type="text" name="couName" class="form-control"
									id="couName_add_input" placeholder="Java"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学分</label>
							<div class="col-sm-2">
								<input type="text" name="couScore" class="form-control"
									id="couScore_add_input"> <span class="help-block"></span>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">考试时间</label>
							<div class="col-sm-6">
								<div class='input-group date' id='datetimepicker1'>
									<input type='text' class="form-control" readonly class="form_datetime" name="couTime"/> <span
										class="input-group-addon"> <span
										class="glyphicon glyphicon-calendar"></span>
									</span>
								</div>
							</div>
						</div>
						
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="cou_save_btn">保存</button>
				</div>
			</div>
		</div>
	</div>

<!-- 统计信息的模态框 -->
<div class="modal fade" id="tongjiModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">该课程的成绩统计</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-6 control-label">参与考试的学生人数</label>
							<div class="col-sm-4">
								<p class="form-control-static" id="stuNum_update_static"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-6 control-label">平均分</label>
							<div class="col-sm-4">
								<p class="form-control-static" id="avgNum_update_static"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-6 control-label">最高分</label>
							<div class="col-sm-4">
								<p class="form-control-static" id="maxNum_update_static"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-6 control-label">最低分</label>
							<div class="col-sm-4">
								<p class="form-control-static" id="minNum_update_static"></p>
							</div>
						</div>
						
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
			<!-- <li role="presentation" class="active"><a>课程</a></li>
			<li role="presentation"><a href="stuList">查看学生列表</a></li> -->
			<li role="presentation"><a href="stuList">学生</a></li>
			<li role="presentation" class="active"><a href="couList">课程</a></li>
		</ul>
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<button class="btn btn-primary" id="cou_add_modal_btn">新增</button>
				<button class="btn btn-danger" id="cou_delete_all_btn">删除</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="cous_table">
					<thead>
						<tr>
							<th><input type="checkbox" id="check_all" /></th>
							<th>课程号</th>
							<th>课程名</th>
							<th>学分</th>
							<th>考试时间</th>
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
				url : "${APP_PATH}/cous",
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
			$("#cous_table tbody").empty();
			var cous = result.extend.pageInfo.list;
			$.each(cous, function(index, item) {
				var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
				var couIdTd = $("<td></td>").append(item.couId);
				var couNameTd = $("<td></td>").append(item.couName);
				var couScoreTd = $("<td></td>").append(item.couScore);
				var couTimeTd = $("<td></td>").append(formartDate("yyyy-MM-dd", item.couTime));
				var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
					.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("查看课程成绩");
				//为编辑按钮添加一个自定义的属性，来表示当前学生id
				editBtn.attr("edit-id", item.couId); 
				var lookBtn = $("<button></button>").addClass("btn btn-primary btn-sm look_btn")
					.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("统计信息");
				//为编辑按钮添加一个自定义的属性，来表示当前学生id
				lookBtn.attr("edit-id", item.couId); 
				var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
					.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
				//为删除按钮添加一个自定义的属性来表示当前删除的学生id
				delBtn.attr("del-id", item.couId);
				var btnTd = $("<td></td>").append(lookBtn).append(" ").append(editBtn).append(" ").append(delBtn);
				$("<tr></tr>").append(checkBoxTd)
					.append(couIdTd)
					.append(couNameTd)
					.append(couScoreTd)
					.append(couTimeTd)
					.append(btnTd)
					.appendTo("#cous_table tbody");
			});
		}
		//解析显示分页信息
		function build_page_info(result) {
			$("#page_info_area").empty();
			$("#page_info_area").append("当前" + result.extend.pageInfo.pageNum + "页,总" +
				result.extend.pageInfo.pages + "页,共" +
				result.extend.pageInfo.total + "门课");
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
		$("#cou_add_modal_btn").click(function() {
			reset_form("#couAddModal form");
			$("#couAddModal").modal({
				backdrop : "static"
			});
		});
		
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
		
		$("#couId_add_input").change(function() {
			//发送ajax请求校验用户名是否可用
			var couId = this.value;
			$.ajax({
				url : "${APP_PATH}/checkcouId",
				data : "couId=" + couId,
				type : "POST",
				success : function(result) {
					if (result.code == 100) {
						show_validate_msg("#couId_add_input", "success", "用户名可用");
						$("#cou_save_btn").attr("ajax-va", "success");
					} else {
						show_validate_msg("#couId_add_input", "error", result.extend.va_msg);
						$("#cou_save_btn").attr("ajax-va", "error");
					}
				}
			});
		});
		
		//校验表单数据
		function validate_add_form() {
			//其他的不为空
			var couId = $("#couId_add_input").val();
			if (couId.length == 0) {
				show_validate_msg("#couId_add_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#couId_add_input", "success", "");
			}
			;
	
			var couName = $("#couName_add_input").val();
			if (couName.length == 0) {
				show_validate_msg("#couName_add_input", "error", "不能为空");
				return false;
			} else {
				show_validate_msg("#couName_add_input", "success", "");
			}
			;
	
			return true;
		}
		
		$("#cou_save_btn").click(function() {
	
			if (!validate_add_form()) {
				return false;
			}
			;
			//1、判断之前的ajax学号校验是否成功。如果成功。
			if ($(this).attr("ajax-va") == "error") {
				return false;
			}
		
			$.ajax({
				url : "${APP_PATH}/cou",
				type : "POST",
				data : $("#couAddModal form").serialize(),
				success : function(result) {
					//alert(result.msg);
					$("#couAddModal").modal('hide');
					to_page(totalRecord);
				}
			});
		});
		
		//单个删除
		$(document).on("click", ".delete_btn", function() {
			//1、弹出是否确认删除对话框
			//alert($(this).attr("del-id"));//学号弹出框
			//alert($(this).parents("tr").find("td:eq(2)").text());姓名
			var couName = $(this).parents("tr").find("td:eq(2)").text();
			var couId = $(this).attr("del-id");
			if (confirm("确认删除【" + couName + "】吗？")) {
				//确认，发送ajax请求删除即可
				$.ajax({
					url : "${APP_PATH}/cou/" + couId,
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
		$("#cou_delete_all_btn").click(function() {
			//
			var couNames = "";
			var del_idstr = "";
			$.each($(".check_item:checked"), function() {
				//this
				couNames += $(this).parents("tr").find("td:eq(2)").text() + ",";
				//组装员工id字符串
				del_idstr += $(this).parents("tr").find("td:eq(1)").text() + "-";
			});
			//去除empNames多余的,
			couNames = couNames.substring(0, couNames.length - 1);
			//去除删除的id多余的-
			del_idstr = del_idstr.substring(0, del_idstr.length - 1);
			if (confirm("确认删除【" + del_idstr + "】吗？")) {
				//发送ajax请求删除
				$.ajax({
					url : "${APP_PATH}/cou/" + del_idstr,
					type : "DELETE",
					success : function(result) {
						alert(result.msg);
						//回到当前页面
						to_page(currentPage);
					}
				});
			}
		});
		
		//查看成绩
		$(document).on("click", ".edit_btn", function() {
			var couId=$(this).attr("edit-id");
			window.location.href="lookScore?couId="+couId
			
		});
		//成绩统计
		$(document).on("click", ".look_btn", function() {
			//alert("look");
			getCount($(this).attr("edit-id"));
			/* $("#couId_update_static").text(cI);
			$("#couName_update_static").text(cN);
			$("#sco_update_btn").attr("edit-id", $(this).attr("edit-id")); */
			//点击编辑按钮弹出模态框。
			$("#tongjiModal").modal({
				backdrop : "static"
			});
		});
		
		function getCount(couId) {
			$.ajax({
				url : "${APP_PATH}/count",
				data: "couId="+couId,
				type : "GET",
				success : function(result) {
					//console.log(result);
					var stuData = result.extend;
					$("#stuNum_update_static").text(stuData.list[3]);
					$("#avgNum_update_static").text(stuData.list[0]);
					$("#maxNum_update_static").text(stuData.list[1]);
					$("#minNum_update_static").text(stuData.list[2]);
					
				}
			});
		}
		
		function formartDate(dataFormate, time) {
			var date = new Date();
			date.setTime(time);
			return date.pattern(dataFormate);
		}
		Date.prototype.pattern = function(fmt) {
			var o = {
				"M+" : this.getMonth() + 1, //月份     
				"d+" : this.getDate(), //日     
				"h+" : this.getHours() % 12 == 0 ? 12 : this.getHours() % 12, //小时     
				"H+" : this.getHours(), //小时     
				"m+" : this.getMinutes(), //分     
				"s+" : this.getSeconds(), //秒     
				"q+" : Math.floor((this.getMonth() + 3) / 3), //季度     
				"S" : this.getMilliseconds()
			//毫秒     
			};
			var week = {
				"0" : "日",
				"1" : "一",
				"2" : "二",
				"3" : "三",
				"4" : "四",
				"5" : "五",
				"6" : "六"
			};
			if (/(y+)/.test(fmt)) {
				fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "")
					.substr(4 - RegExp.$1.length));
			}
			if (/(E+)/.test(fmt)) {
				fmt = fmt.replace(RegExp.$1,
					((RegExp.$1.length > 1) ? (RegExp.$1.length > 2 ? "星期" : "周")
						: "")
					+ week[this.getDay() + ""]);
			}
			if (/(e+)/.test(fmt)) {
				fmt = fmt.replace(RegExp.$1,
					((RegExp.$1.length > 1) ? (RegExp.$1.length > 2 ? "星期" : "周")
						: "")
					+ this.getDay());
			}
			for (var k in o) {
				if (new RegExp("(" + k + ")").test(fmt)) {
					fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k])
						: (("00" + o[k]).substr(("" + o[k]).length)));
				}
			}
			return fmt;
		}
		$(function() {
			$('#datetimepicker1').datetimepicker({
				format : 'yyyy-mm-dd hh:ii',
				language: 'zh-CN',
				autoclose:true
			});
		});
	</script>
</body>
</html>
