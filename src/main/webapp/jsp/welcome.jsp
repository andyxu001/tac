<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ include file="../jsp/base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎页面</title>
<link href="../css/main.css" rel="stylesheet" type="text/css" />


 <script type="text/javascript">
        var mt = 0;
        window.onload = function () {
            var menu = document.getElementById("menu");
            var mt = menu.offsetTop;
            window.onscroll = function () {
                var t = document.documentElement.scrollTop || document.body.scrollTop;
                if (t > mt) {
                	menu.style.position = "fixed";
                	menu.style.margin = "0";
                	menu.style.top = "0";
                }
                else {
                	menu.style.margin = "20px 0";
                	menu.style.position = "static";
                }
            }
            
            
        }
        
        function f(){
        	content_frame.location.href="../jsp/firstPage.jsp"; 
        }
        
        function iFrameHeight(){
        	var ifm= document.getElementById("iframepage");   
        	var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;   
        	if(ifm != null && subWeb != null) {
        	   ifm.height = subWeb.body.scrollHeight;
        	   ifm.width = subWeb.body.scrollWidth;
        	   if(ifm.height <= 500){
        		   ifm.height = 500;
        	   }
        	   
        	} 
        }
        
    </script>
		
</head>

<body onload="f()">
   <div class="top">
        <div class="top_content">
          <ul>
            <li>
               <a href="http://xuyuefei.com" 
				   onclick="window.external.addFavorite('http://xuyuefei.com','浙江古信科技有限公司');
				            return false;" 
				   title="将本站添加到你的收藏夹中！" 
				   align="center">
				    收藏
				</a>
            </li>
            <li>
               <a href="http://xuyuefei.com" 
				   onClick="this.style.behavior='url(#default#homepage)';
				            this.setHomePage('http://xuyuefei.com');
							return(false);" 
				   style="behavior: url(#default#homepage)">
				    设为首页
				</a>
            </li>
          </ul>
        </div>
   </div>
   
   <div class="wrap">
       <div class="logo">
           <div class="logo_left">
                <img src="../images/head.jpg" alt="head" style="height:140px;width:1100px">
           </div>
       </div>
       
        <div class="menu" id="menu">
                <ul>
                      <li><a href="../jsp/firstPage.jsp" target="content_frame">首页</a></li>
                      <li><a href="#">关于古信</a>
                        <ul>
                          <li><a href="../jsp/AboutUs.jsp" target="content_frame">公司简介</a></li>
                          <li><a href="#">树脂</a></li>
                          <li><a href="#">预分散颜料</a></li>
                        </ul>
                      </li>
                      <li><a href="#">产品展示</a></li>
                      <li><a href="#">新闻资讯</a>
                          <ul>
                          <li><a href="#">颜料</a></li>
                          <li><a href="#">树脂</a></li>
                          <li><a href="#">预分散颜料</a></li>
                          </ul>
                      </li>
                      <li><a href="../jsp/contact.jsp" target="content_frame">联系方式</a></li>
                </ul>
           </div>
      
           <div id="content">
                <iframe src="" name="content_frame" frameborder="0" scrolling="no"
                  width="1100px" style="border: 0px;"onload="iFrameHeight()" id="iframepage">
                  
                </iframe>
           </div>
           
      </div>  
   <!-- *************************************** -->
	<div class="foot">
		<div class="container">
			<div class="sy_fl">
				<ul>
					<li><a href="../jsp/firstPage.jsp" target="content_frame"><strong>首页</strong></a></li>
				</ul>
				<ul>
					<li><a href="#"><strong>关于古信</strong></a></li>
					<li><a href="../jsp/AboutUs.jsp" target="content_frame">企业简介</a></li>
					<li><a href="NewsList.asp?SortID=14">企业新闻</a></li>
					<li><a href="NewsList.asp?SortID=13">行业新闻</a></li>
				</ul>
				<ul>
					<li><a href="#"><strong>产品展示</strong></a></li>
					<li><a href="yunying.asp?ID=1">资源回收</a></li>
					<li><a href="yunying.asp?ID=2">生产工艺</a></li>
					<li><a href="yunying.asp?ID=3">质检中心</a></li>
				</ul>
				<ul>
					<li><a href="#"><strong>新闻资讯</strong></a></li>
					<li><a href="ProductList.Asp?SortID=36" hidefocus="true">铝合金锭</a></li>
					<li><a href="ProductList.Asp?SortID=39" hidefocus="true">其他</a></li>

				</ul>
				<ul>
					<li><a href="../jsp/contact.jsp" target="content_frame"><strong>联系我们</strong></a></li>
				</ul>
			</div>
			<div class="sy_li">
				<!-- <img src="../images/map.jpg" /> -->
			</div>
			<div class="banquan">
				Copyright @  All rights reserved. <a
					href=" http://beian.miit.gov.cn" target="_blank">
					浙ICP备2020040212号</a>
			</div>

		</div>
	</div>

      
</body>
</html>
