<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>Register</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form.add .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #666;
						font-size: 14px;
						border-color: #ddd;
						line-height: 40px;
						border-radius: 30px;
						outline: none;
						background: #fff;
						width: 350px;
						border-width: 1px;
						border-style: solid;
						height: 40px;
					}
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<div class="data-add-container" :style='{"padding":"30px 7% 40px","margin":"10px auto","alignItems":"flex-start","flexWrap":"wrap","background":"rgba(255,255,255,0)","display":"block","width":"100%","justifyContent":"space-between"}'>
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">借阅编号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.jieyuebianhao" type="text" :readonly="ro.jieyuebianhao" name="jieyuebianhao" id="jieyuebianhao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">Bar Code：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.tiaoxingma" type="text" :readonly="ro.tiaoxingma" name="tiaoxingma" id="tiaoxingma" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">图书名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.tushumingcheng" type="text" :readonly="ro.tushumingcheng" name="tushumingcheng" id="tushumingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">Borrowing Price：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.jieyuejiage" type="text" :readonly="ro.jieyuejiage" name="jieyuejiage" id="jieyuejiage" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">Borrowable Days：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.kejietianshu" type="text" :readonly="ro.kejietianshu" name="kejietianshu" id="kejietianshu" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">Overdue Fees/Day：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.chaoqifeiyong" type="text" :readonly="ro.chaoqifeiyong" name="chaoqifeiyong" id="chaoqifeiyong" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">借阅时间：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" name="jieyueshijian" id="jieyueshijian" autocomplete="off" class="layui-input" >
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">user Account：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.yonghuzhanghao" type="text" :readonly="ro.yonghuzhanghao" name="yonghuzhanghao" id="yonghuzhanghao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">User Name：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.yonghuxingming" type="text" :readonly="ro.yonghuxingming" name="yonghuxingming" id="yonghuxingming" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">Phone：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.shoujihaoma" type="text" :readonly="ro.shoujihaoma" name="shoujihaoma" id="shoujihaoma" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">违约天数：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.weiyuetianshu" type="text" :readonly="ro.weiyuetianshu" name="weiyuetianshu" id="weiyuetianshu" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">违约金：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="weiyuejin" type="text" name="weiyuejin" id="weiyuejin" disabled="disabled" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">记录时间：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" name="jilushijian" id="jilushijian" autocomplete="off" class="layui-input" >
					</div>


					<div :style='{"margin":"20px 0 0 0px","alignItems":"center","justifyContent":"center","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","boxShadow":"inset 0px 0px 12px 0px #b3d7ea","margin":"0 10px","borderColor":"#288bbf","color":"#288bbf","minWidth":"150px","outline":"none","borderRadius":"8px","background":"#fff","borderWidth":"2px","width":"auto","fontSize":"16px","lineHeight":"44px","borderStyle":"solid","height":"48px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","boxShadow":"inset 0px 0px 12px 0px #eee","margin":"0 10px","borderColor":"#ccc","color":"#999","minWidth":"150px","outline":"none","borderRadius":"8px","background":"none","borderWidth":"2px","width":"auto","fontSize":"16px","lineHeight":"44px","borderStyle":"solid","height":"48px"}' type="reset" class="layui-btn layui-btn-primary">Reset</button>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>
		<script>
			var jquery = $;

			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        jieyuebianhao : false,
                                        tiaoxingma : false,
                                        tushumingcheng : false,
                                        jieyuejiage : false,
                                        kejietianshu : false,
                                        chaoqifeiyong : false,
                                        jieyueshijian : false,
                                        yonghuzhanghao : false,
                                        yonghuxingming : false,
                                        shoujihaoma : false,
                                        weiyuetianshu : false,
                                        weiyuejin : false,
                                        jilushijian : false,
                                        crossuserid : false,
                                        crossrefid : false,
                                        ispay : false,
					},
                    detail: {
                        jieyuebianhao: '',
                        tiaoxingma: '',
                        tushumingcheng: '',
                        jieyuejiage: '',
                        kejietianshu: '',
                        chaoqifeiyong: '',
                        jieyueshijian: '',
                        yonghuzhanghao: '',
                        yonghuxingming: '',
                        shoujihaoma: '',
                        weiyuetianshu: '',
                        weiyuejin: '',
                        jilushijian: '',
                        crossuserid: '',
                        crossrefid: '',
                        ispay: '',
                    },
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {


                    weiyuejin:{
                        get: function () {
                            return 1*this.detail.chaoqifeiyong*this.detail.weiyuetianshu
                        }
                    },

                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;


                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList = swiperList;

                        vue.$nextTick(() => {
                            carousel.render({
                                elem: '#layui-carousel',
                                width: '100%',
                                height: '520px',
                                anim: 'fade',
                                autoplay: 'true',
                                interval: '6000',
                                arrow: 'none',
                                indicator: 'inside'
                            });
                        })
                    }
                });
                                jquery('#jieyueshijian').val(getCurDateTime());
				laydate.render({
					elem: '#jieyueshijian',
					type: 'datetime'
				});
                                jquery('#jilushijian').val(getCurDateTime());
				laydate.render({
					elem: '#jilushijian',
					type: 'datetime'
				});

                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='jieyuebianhao'){
                                vue.detail[o] = obj[o];
                                vue.ro.jieyuebianhao = true;
                                continue;
                        }
                        if(o=='tiaoxingma'){
                                vue.detail[o] = obj[o];
                                vue.ro.tiaoxingma = true;
                                continue;
                        }
                        if(o=='tushumingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.tushumingcheng = true;
                                continue;
                        }
                        if(o=='jieyuejiage'){
                                vue.detail[o] = obj[o];
                                vue.ro.jieyuejiage = true;
                                continue;
                        }
                        if(o=='kejietianshu'){
                                vue.detail[o] = obj[o];
                                vue.ro.kejietianshu = true;
                                continue;
                        }
                        if(o=='chaoqifeiyong'){
                                vue.detail[o] = obj[o];
                                vue.ro.chaoqifeiyong = true;
                                continue;
                        }
                        if(o=='jieyueshijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.jieyueshijian = true;
                                jquery('#jieyueshijian').val(obj[o]);
                                continue;
                        }
                        if(o=='yonghuzhanghao'){
                                vue.detail[o] = obj[o];
                                vue.ro.yonghuzhanghao = true;
                                continue;
                        }
                        if(o=='yonghuxingming'){
                                vue.detail[o] = obj[o];
                                vue.ro.yonghuxingming = true;
                                continue;
                        }
                        if(o=='shoujihaoma'){
                                vue.detail[o] = obj[o];
                                vue.ro.shoujihaoma = true;
                                continue;
                        }
                        if(o=='weiyuetianshu'){
                                vue.detail[o] = obj[o];
                                vue.ro.weiyuetianshu = true;
                                continue;
                        }
                        if(o=='weiyuejin'){
                                vue.detail[o] = obj[o];
                                vue.ro.weiyuejin = true;
                                continue;
                        }
                        if(o=='jilushijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.jilushijian = true;
                                jquery('#jilushijian').val(obj[o]);
                                continue;
                        }
                        if(o=='crossuserid'){
                                vue.detail[o] = obj[o];
                                vue.ro.crossuserid = true;
                                continue;
                        }
                        if(o=='crossrefid'){
                                vue.detail[o] = obj[o];
                                vue.ro.crossrefid = true;
                                continue;
                        }
					}
				}


				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;

                    // 数据校验
                    if(!isNumber(data.chaoqifeiyong)){
                        layer.msg('超期费用/天应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.weiyuetianshu){
                        layer.msg('违约天数不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.weiyuetianshu)){
                        layer.msg('违约天数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

					// 跨表计算判断

                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('weiyuejilu/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('weiyuejilu' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('weiyuejilu' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
