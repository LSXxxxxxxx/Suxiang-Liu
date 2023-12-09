<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>home</title>
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						padding: 30px 20px;
						left: 10px;
						background: #ba1f26;
						right: auto;
					}

		.recommends .list-3 .swiper-button-prev::after {
						color: #fff;
					}

		.recommends .list-3 .swiper-button-next {
						padding: 30px 20px;
						left: auto;
						background: #ba1f26;
						right: 10px;
					}

		.recommends .list-3 .swiper-button-next::after {
						color: #fff;
					}

		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}

		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}

		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}

		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}

		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}

		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}

		.recommends .animation-box:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}

		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}

		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
						transition: 0.3s;
					}
		/* recommends */

		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}

		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}

		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}

		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}

		.news .list-6 .swiper-button-prev {
						left: 10px;
						right: auto;
					}

		.news .list-6 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}

		.news .list-6 .swiper-button-next {
						left: auto;
						right: 10px;
					}

		.news .list-6 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}

		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}

		.news .animation-box:hover {
						transform: translate3d(0px, 10px, 0px);
						-webkit-perspective: 1000px;
						background: #fff;
						perspective: 1000px;
						transition: background 0.3s ease-in-out;
					}

		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}

		.news img:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 1;
						transition: 0.3s;
					}
		/* news */

		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}

		.lists .list-3 .swiper-button-prev::after {
						color: #5bb450;
					}

		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}

		.lists .list-3 .swiper-button-next::after {
						color: #5bb450;
					}

		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}

		.lists .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}

		.lists .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}

		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}

		.lists .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}

		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}

		.lists .animation-box:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}

		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}

		.lists img:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->


			<div :style='{"padding":"0","margin":"10px auto","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between"}'>



				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"20px 0 30px","margin":"0","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230127/cb48feb1ff1b497faa783e042fab17b3.jpg) repeat-y center top / 100% 100%","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"4"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/a8d8f8c3c014471290d6bd980b2a6ccf.jpg) no-repeat center center","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>

					<div class="title" :style='{"padding":"0px 0 30px","margin":"60px auto 40px","borderColor":"#f6cccc","alignItems":"center","textAlign":"left","flexDirection":"initial","display":"flex","justifyContent":"center","minHeight":"50px","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230127/08c16dc8bbc641d9b10f2c8403aeb7f1.png) no-repeat center bottom","borderWidth":"0px","width":"100%","borderStyle":"dashed"}'>
						<span :style='{"padding":"0 10px","color":"#eee","background":"none","width":"auto","fontSize":"16px","lineHeight":"50px","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"padding":"0 0px","margin":"0px","color":"#fff","textAlign":"center","background":"none","width":"auto","fontSize":"30px","lineHeight":"50px"}'>Book information recommendation</span>
					</div>

					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/a8d8f8c3c014471290d6bd980b2a6ccf.jpg) no-repeat center center","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>

					<!-- 样式二 -->
				    <div :style='{"padding":"0px 7%","margin":"20px 0 0","flexWrap":"wrap","textAlign":"left","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"cursor":"pointer","padding":"0px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0 0 30px","borderColor":"#eee","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"#fff","borderWidth":"0px","width":"23.5%","fontSize":"0","position":"relative","borderStyle":"solid","height":"auto"}' class="list-item animation-box" v-for="(item,index) in tushuxinxiRecommend" :key="index" @click="jump('../tushuxinxi/detail.jsp?id='+item.id)">
							<img :style='{"verticalAlign":"middle","padding":"10px 10px 60px","borderColor":"#ccc","objectFit":"cover","borderRadius":"0","borderWidth":"0px","background":"url(http://codegen.caihongy.cn/20230127/ef04f1f0d78145d4b55871efdc1e6549.png) no-repeat center bottom / 100% auto,#7dd8ee","display":"inline-block","width":"100%","borderStyle":"dashed","height":"380px"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''" alt="" />
							<div :style='{"width":"calc(100% - 0px)","padding":"10px 0px","verticalAlign":"middle","overflow":"hidden","display":"inline-block","height":"100%"}' class="item-info">
								<div :style='{"padding":"0","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","borderWidth":"0px","background":"none","width":"100%","lineHeight":"40px","fontSize":"16px","textOverflow":"ellipsis","borderStyle":"solid","fontWeight":"500","height":"40px"}' class="name">{{item.tushumingcheng}}</div>
								<div :style='{"padding":"0","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","borderWidth":"0px","background":"none","width":"100%","lineHeight":"40px","fontSize":"16px","textOverflow":"ellipsis","borderStyle":"solid","fontWeight":"500","height":"40px"}' class="name">Author:{{item.zuozhe}}</div>
							</div>
				        </div>
				    </div>

					<div :style='{"cursor":"pointer","padding":"0 20px","margin":"10px auto","borderColor":"#f65602","borderRadius":"30px","textAlign":"center","background":"none","borderWidth":"0px","display":"inline-block","width":"auto","lineHeight":"40px","borderStyle":"dashed"}' @click="jump('../tushuxinxi/list.jsp')">
						<span :style='{"color":"#fff","fontSize":"18px"}'>See more</span>
						<i v-if='true' :style='{"color":"#fff","fontSize":"18px"}' class="layui-icon layui-icon-next"></i>
					</div>

					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/a8d8f8c3c014471290d6bd980b2a6ccf.jpg) no-repeat center center","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {


                    // 推荐数据
					tushuxinxiRecommend: [],





                    aboutUsDetail:{},
                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;

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

                http.request(`aboutus/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.aboutUsDetail = res.data;
                    }
                });

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 4,
				}, function(res) {
					var newsList = res.data.list;

					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}

					let flag = 7;

					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}

						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}

					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true

						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});



                // 获取推荐信息
      				var autoSortUrl = "tushuxinxi/autoSort";
				if(localStorage.getItem('userid')!=null) {
					autoSortUrl = "tushuxinxi/autoSort2";
				}
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 4,
				}, function(res) {
					vue.tushuxinxiRecommend = res.data.list

					let flag = 2;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":600,"spaceBetween":20,"autoplay":{"delay":"6000","disableOnInteraction":false}}
						options.pagination = {el:'null'}

						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}

						vue.$nextTick(() => {
								new Swiper ('#recommendtushuxinxi', options)
						})
					}

					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swipertushuxinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式

											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});





			});
		</script>
	</body>
</html>
