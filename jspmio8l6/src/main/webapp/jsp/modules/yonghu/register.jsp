<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets2/js/jquery.min.js"></script>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
<!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/style.css"> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/loader-style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/signin.css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
<!-- Fav and touch icons -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assets2/ico/minus.png">
	</head>

<style>
	.error{
		color:red;
	}

	html, body {
		width: 100%;
		height: 100%;
	}

	.content {
				background: url(http://codegen.caihongy.cn/20221217/92293fde47434d26b34ac3e5a1fa2353.jpg) no-repeat center top / 100% 100%,#eee;
				display: flex;
				width: 100%;
				min-height: 100vh;
				justify-content: center;
				align-items: center;
			}

	#registerForm {
				border: 10px solid #ccc;
				padding: 0 0 100px;
				margin: 300px 0 80px 0;
				display: flex;
				min-height: 680px;
				flex-wrap: wrap;
				border-radius: 100%;
				box-shadow: 0px 0px 0px #eee;
				background: #fff;
				width: 680px;
				justify-content: center;
				position: relative;
				text-align: center;
				height: auto;
			}

	#registerForm .title {
				border: 4px solid #a4bed4;
				border-radius: 20px;
				padding: 0px 0 0px;
				margin: 100px auto 10px;
				text-shadow: 0px 0px 0px rgba(64, 158, 255, .5);
				color: #378fb8;
				background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(202,226,255,1) 50%, rgba(210,230,254,1) 100%),#85ccfe;
				width: 66%;
				font-size: 18px;
				line-height: 44px;
				text-align: center;
			}

	#registerForm .list-item {
				padding: 0;
				margin: 0 auto 4px;
				width: 60%;
				height: auto;
			}

	#registerForm .list-item .item-label {
				color: rgba(64, 158, 255, 1);
				width: 64px;
				font-size: 14px;
				line-height: 44px;
			}

	#registerForm .list-item>input {
				border: 0;
				border-radius: 0;
				padding: 0 10px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				color: #999;
				width: 100%;
				font-size: 14px;
				border-color: #edeef0;
				border-width: 0 0 1px;
				border-style: solid;
				height: 36px;
			}

	#registerForm .list-item>select {
				border: 0;
				padding: 0 10px;
				color: #999;
				font-size: 14px;
				border-color: #eee;
				line-height: 36px;
				border-radius: 0px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				width: 100%;
				border-width: 0 0 1px;
				border-style: solid;
				height: 36px;
			}

	#registerForm .list-item .date {
				border: 0;
				padding: 0 10px;
				color: #999;
				font-size: 14px;
				border-color: #eee;
				line-height: 36px;
				border-radius: 0px;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				width: 100%;
				border-width: 0 0 1px;
				border-style: solid;
				height: 36px;
			}

	#registerForm .list-item-img {
				border: 0px solid #edeef0;
				padding: 0;
				margin: 4px auto 4px;
				background: none;
				width: 60%;
				height: auto;
			}

	#registerForm .list-item-img .item-label {
				padding: 0 10px 0 0;
				color: #666;
				font-weight: 500;
				width: 84px;
				font-size: 14px;
				line-height: 40px;
				text-align: right;
			}

	#registerForm .list-item-img img {
				margin: 0 10px 0 0;
				object-fit: cover;
				display: inline-block;
				width: 100px;
				height: 50px;
			}

	#registerForm .list-item-img .btn-img {
				cursor: pointer;
				border: 1px solid #a4bed4;
				padding: 0 12px;
				color: #333;
				display: inline-block;
				font-size: 12px;
				line-height: 34px;
				border-radius: 0px;
				background: url(http://codegen.caihongy.cn/20221212/4a0f9532149644e49a26908e1f25c6b0.gif) repeat-x;
				width: auto;
				position: relative;
				text-align: center;
				height: 34px;
			}

	#registerForm .list-item-img .btn-img input {
		position: absolute;
		opacity: 0;
		width: 100%;
		height: 100%;
		left: 0;
		top: 0;
	}

	#registerForm .list-item.emails .item-body input {
				border: 0;
				padding: 0 12px;
				margin: 0 20px 0 0;
				color: #999;
				font-size: 14px;
				border-color: #edeef0;
				float: left;
				border-radius: 0;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: #fff;
				width: 252px;
				border-width: 0 0 1px;
				border-style: solid;
				height: 36px;
			}

	#registerForm .list-item.emails .item-body button {
				border: 1px solid #a4bed4;
				cursor: pointer;
				padding: 0 12px;
				margin: 2px 0 0;
				color: #333;
				font-size: 12px;
				float: right;
				border-radius: 0;
				box-shadow: 0 0 0px rgba(64, 158, 255, .5);
				outline: none;
				background: url(http://codegen.caihongy.cn/20221212/4a0f9532149644e49a26908e1f25c6b0.gif) repeat-x;
				width: auto;
				height: 34px;
			}

	#submitBtn {
				border: 8px solid #a4bed4;
				cursor: pointer;
				padding: 0 10px;
				margin: 20px auto 5px;
				color: #333;
				bottom: -34px;
				display: block;
				letter-spacing: 4px;
				font-size: 24px;
				border-radius: 30%;
				box-shadow: 0 2px 4px rgba(0,0,0,.2);
				outline: none;
				background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(202,226,255,1) 50%, rgba(210,230,254,1) 100%),#85ccfe;
				width: auto;
				position: absolute;
				min-width: 200px;
				height: 80px;
			}

	#loginBtn {
				cursor: pointer;
				padding: 0 10%;
				margin: 4px 0 0;
				color: rgba(159, 159, 159, 1);
				display: inline-block;
				text-decoration: underline;
				width: 100%;
				font-size: 12px;
				line-height: 1;
			}
</style>

<body>

	<div class="content">
			<form id="registerForm" action="" method="post">
				<div class="title">Register</div>
				<div class="list-item">
					<input  name="yonghuzhanghao"  placeholder="请输入user Account" class="form-control-i">
				</div>
				<div class="list-item">
					<input type="password"#elsetype="text" name="mima"  placeholder="请输入Password" class="form-control-i">
				</div>
				<div class="list-item">
					<input type="password" name="mima2" placeholder="确认Password" class="form-control-i">
				</div>
				<div class="list-item">
					<input  name="yonghuxingming"  placeholder="请输入User Name" class="form-control-i">
				</div>
                <div class="list-item-img">
                    <img id="touxiangImg" src="" width="100" height="100">
                    <div class="upload btn-img">请选择Head Sculpture<input name="file" type="file" id="touxiangupload" class="form-control-file"></div>
                    <input name="touxiang" id="touxiang-input" type="hidden">
                </div>
                <div class="list-item">
                    <select id="xingbieSelect" name="xingbie"  class="form-control">
                            <option value="">请选择性别</option>
                            <option class="xingbieOption" value="Man">
                                Man
                            </option>
                            <option class="xingbieOption" value="Female">
                                Female
                            </option>
                    </select>
                </div>
				<div class="list-item">
					<input  name="shoujihaoma"  placeholder="请输入Phone" class="form-control-i">
				</div>
				<button id="submitBtn" class="btn btn-primary" type="button">注 册</button>
				<a id="loginBtn" href="javascript:window.location.href='../../login.jsp'">已有账号，直接Login</a>
			</form>
	</div>

	<!--  END OF PAPER WRAP -->

	<!-- MAIN EFFECT -->
    <script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/bootstrap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<!--<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script> -->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/map/gmap3.js"></script> -->
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
		<script type="text/javascript">

	<%@ include file="../../utils/menu.jsp"%>
	<%@ include file="../../static/utils.js"%>
	<%@ include file="../../utils/baseUrl.jsp"%>




        // 文件上传
        function upload(){
            $('#touxiangupload').fileupload({
                url: baseUrl + 'file/upload',
                headers:{ token: window.sessionStorage.getItem("token")},
                dataType: 'json',
                done: function (e, data) {
                    document.getElementById('touxiang-input').setAttribute('value',"upload/"+data.result.file);
                    if(document.getElementById('touxiangFileName') != null){
                        document.getElementById('touxiangFileName').innerHTML = "上传成功!";
                    }
                    $("#touxiangImg").attr("src",baseUrl+"upload/"+data.result.file);
                }
            });
        }

		// 表单校验
		function validform() {
			return $("#registerForm").validate({
				rules: {
							mima: {
								required: true,
							},
							yonghuxingming: {
								required: true,
							},
							touxiang: {
							},
							xingbie: {
							},
							shoujihaoma: {
								isPhone: true,
							},
				},
				messages: {
							mima: {
								required: "Password不能为空",
							},
							yonghuxingming: {
								required: "User Name不能为空",
							},
							touxiang: {
							},
							xingbie: {
							},
							shoujihaoma: {
							},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的Phone");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element) || value.length == 18;
			}, "请正确输入您的身份证号码");
			jQuery.validator.addMethod("isTel", function(value, element) {
		          var length = value.length;
		          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
		          return this.optional(element) || (phone.test(value));
		         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}


        function dateTimePick(){
            $.fn.datetimepicker.dates['zh-CN'] = {
                    days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
                    daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
                    daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
                    months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                    monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                    today: "今天",
                    suffix: [],
                    meridiem: ["上午", "下午"]
            };
        }

        function init() {
        }

		// 表单提交
		function submit() {
			if(validform() ==true){
				let data = {};
				let value = $('#registerForm').serializeArray();
				$.each(value, function (index, item) {
							data[item.name] = item.value;
						});
                if(data.mima!=data.mima2) {
                    alert("两次Password输入不一致");
                    return;
                }
				let json = JSON.stringify(data);
				//console.log('json : ',json);
				var url = baseUrl + "yonghu/register";
				$.ajax({
					type: "POST",
					url: url,
					contentType: "application/json",
					data:json,
					beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
					success: function(res){
						if(res.code == 0){
						alert("注册成功!");
						window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
						}else if(res.code == 401){
							<%@ include file="../../static/toLogin.jsp"%>
						}else{
							alert(res.msg)
						}
					},
				});      
			}else{
				alert("表单未填完整或有错误");
			}
		}

		function ready() {
			addValidation();
            init();
            //初始化上传按钮
            upload();
            //初始化时间插件
            dateTimePick();
			//注册表单验证
		    // $(validform());
			$('#submitBtn').on('click', function(e) {
				e.preventDefault();
				//console.log("点击了...提交按钮");
				submit();
			});
		}
		document.addEventListener("DOMContentLoaded", ready);
	</script>

</body>

</html>
