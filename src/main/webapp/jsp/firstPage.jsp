<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<link href="css/box.css" rel="stylesheet" type="text/css" />



<script src="../js/jquery-1.10.2.js" type="text/javascript"></script>


<!-- css -->

<style type="text/css">
#banner {
	position: relative;
	width: 1078px;
	height: 486px;
	border: 1px solid #666;
	overflow: hidden;
}

#banner_list img {
    width:1078px;
    height:486px;
	border: 0px;
}

#banner_bg {
	position: absolute;
	bottom: 0;
	background-color: #000;
	height: 30px;
	filter: Alpha(Opacity = 30);
	opacity: 0.3;
	z-index: 1000;
	cursor: pointer;
	width: 478px;
}

#banner_info {
	position: absolute;
	bottom: 0;
	left: 5px;
	height: 22px;
	color: #fff;
	z-index: 1001;
	cursor: pointer;
}


#banner ul {
	position: absolute;
	list-style-type: none;
	filter: Alpha(Opacity = 80);
	opacity: 0.8;
	border: 1px solid #fff;
	z-index: 1002;
	margin: 0;
	padding: 0;
	bottom: 3px;
	right: 5px;
	
}

#banner ul li {
	padding: 0px 8px;
	float: left;
	display: block;
	color: #FFF;
	border: #e5eaff 1px solid;
	background: #6f4f67;
	cursor: pointer
}

#banner ul li.on {
	background: #900
}

#banner_list a {
	position: absolute;
}
<!--
让四张图片都可以重叠在一起--
>
</style>


<!-- js -->

<script type="text/javascript">
    
    var n=0,t;
	function showAuto() {
		//如果当前切换的图片索引值大于所有图片的数量 
	    //也就是当切换到最后一张图片再继续切换的时候 则将当前图片索引设置为0（第一张）
	    //否则则将当前图片的索引值+1
		n = n >= (count - 1) ? 0 : ++n;
		//重新触发当前BANNER的click事件
		$("#banner li").eq(n).trigger('click');
	}
	
	function playPicture(){
		//定义获取四张
		count = $("#banner_list a").length;
		//设置默认显示第一张BANNER图，其他的隐藏
		$("#banner_list a:not(:first-child)").hide();
		//设置默认标题为第一张图标的信息 
		$("#banner_info").html(
				$("#banner_list a:first-child").find("img")
						.attr('alt'));
		//点击默认的标题，链接到第一张BANNER图的a链接地址
		$("#banner_info").click(
				function() {
					window.open($("#banner_list a:first-child")
							.attr('href'), "_blank")
				});
		//这里为切换数字按钮点击事件
		$("#banner li")
				.click(
						function() {
							//获取Li元素内的值，即1，2，3，4
							var i = $(this).text() - 1;
							n = i;
							if (i >= count)
								return;
							$("#banner_info").html(
									$("#banner_list a").eq(i)
											.find("img").attr(
													'alt'));
							//删除标题绑定的事件并重新设置标题点击后 打开点击按钮对应的BANNER图片的a链接
							$("#banner_info")
									.unbind()
									.click(
											function() {
												window
														.open(
																$(
																		"#banner_list a")
																		.eq(
																				i)
																		.attr(
																				'href'),
																"_blank")
											})
							//将所有的BANNER图淡入隐藏 当前点击按钮对应的BANNER图片淡入显示				
							$("#banner_list a").filter(
									":visible").fadeOut(500)
									.parent().children().eq(i)
									.fadeIn(1000);
							//将容器#banner的背景设置为空
							document.getElementById("banner").style.background = "";
							//将当前点击按钮的样式设置为高亮样式on
							$(this).toggleClass("on");
							//清除其它点击按钮的高亮样式
							$(this).siblings().removeAttr(
									"class");
						});
		//设置默认的定时器  每2s执行一次showauto函数
		t = setInterval("showAuto()", 2000);
		  //容器#banner鼠标移入后 清清除定时器 （也就是鼠标移动到BANNER上面停止切换），移开则继续切换
		$("#banner").hover(function() {
			clearInterval(t)
		}, function() {
			t = setInterval("showAuto()", 2000);
		});
	}
	
</script>

		
</head>

<body onload="playPicture()">
	<div id="banner">
		<div id="banner_bg"></div>
		<!--标题背景-->
		<div id="banner_info"></div>
		<!--标题-->
		<ul>
			<li class="on">1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
		</ul>
		<div id="banner_list">
			<a href="#" target="_blank"><img src="../images/p1.jpg" title="远航" alt="远航" /></a>
			<a href="#" target="_blank"><img src="../images/p2.jpg" title="共赢" alt="共赢" /></a>
			<a href="#" target="_blank"><img src="../images/p3.jpg" title="团结" alt="团结" /></a>
			<a href="#" target="_blank"><img src="../images/p4.jpg" title="创新" alt="创新" /></a>
		</div>

	</div>
</body>

</html>