<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="../jsp/base.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>公司简介</title>
<link rel="${ctx }/baidu-editor/themes/default/css/ueditor.css" style="stylesheet">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>





<script type="text/javascript">
   function getvalue(){
	   alert(ue.getContent());
	   alert(ue.getContentTxt());//获取编辑器中的纯文本内容,没有段落格式
	   alert(ue.getPlainTxt());//得到编辑器的纯文本内容，但会保留段落格式
   }
   
   function showEditor(){
	   ue.setShow();
   }
   
   function hideEditor(){
	   ue.setHide();
   }
 
</script>

<style type="text/css">
  img {float:left; margin:0 5px 5px 0;}
  div.ti1-bg {
	    background: url("../images/title_bg.png") no-repeat; left: 0px; top: 20px; width: 250px; height: 37px; overflow: hidden; position: absolute; z-index: 1; zoom: 1;
       }
       
       div.ti1-bg span {
	width: 170px; color: rgb(255, 255, 255); line-height: 30px; overflow: hidden; font-size: 14px; font-weight: bold; margin-left: 30px; display: block;
      }
      a{text-decoration: none;}
      a:hover{
	color: red;
}
</style>
		
</head>

<body>
<div style="width:1100px;">
   <div style="float:left;border: 1px #ccc solid;width:230px;height: 200px;background-color:#F8F8FF;margin-left: 0px;" class="sb_nav">
       <div class="ti1-bg">
          <span >关于古信</span>
       </div>
       <h3 class="title1"></h3>
       <div class="sidebar" style="margin: 50px;">
          <span style="font-weight: bold;color:#00BFFF">&gt;&nbsp;&nbsp;</span>
          <a href="../jsp/AboutUs.jsp" target="content_frame">
            <span style="color:#4682B4;font-weight: bold;">公司简介</span>
          </a>
       </div>
       <div class="sidebar" style="margin-left: 50px;margin-top: -40px;">
          <span style="font-weight: bold;color:#00BFFF">&gt;&nbsp;&nbsp;</span>
          <a href="#">
            <span style="color:#778899;">树脂</span>
          </a>
       </div>
       <div class="sidebar" style="margin-left: 50px;margin-top: 15px;">
          <span style="font-weight: bold;color:#00BFFF">&gt;&nbsp;&nbsp;</span>
          <a href="#">
            <span style="color:#778899;">预分散颜料</span>
          </a>
       </div>
     </div>

   <div style="border: 1px #ccc solid;width:840px;height:800px;background-color: #fff;margin-left: 250px;">
           <img alt="" src="../images/company.jpg" style="display: inline-block">
           <p>
	         <strong>朗盛（宁波）颜料有限公司 </strong>
	         - 朗盛无机颜料宁波生产基地的投资总额约为6,000万欧元，包括一座年合成产能2.5万吨的氧化铁红色颜料工厂以及一座年产能7万吨的拼混研磨工厂
			         。拼混研磨工厂设计加工宁波工厂生产的氧化铁红颜料，以及朗盛其他工厂供应的原材料（例如金山工厂生产的氧化铁黄）。
			         宁波工厂已于2016年上半年正式投产，总共创造了约200个新的工作岗位。朗盛宁波工厂将采用独特的、拥有专利的“宁波”工艺，
			         实现最优质的产品质量、可持续的生产和资源集约的原材料管理。朗盛在宁波基地运用创新的“宁波”工艺生产拥有独一无二色调的全新氧化铁红颜料。
这是中国首个可持续颜料生产工艺，能够循环利用并处理所有副产品。例如，生产工艺的优化极大地降低生产过程中的笑气和氮氧化物。
此外，残留的尾气将被特殊的废气处理装置处理，残渣经过稀硝酸回用装置处理，重新作为生产原材料使用。
与大多数中国氧化铁生产厂商使用的传统彭尼曼红色工艺相较，“宁波”工艺通过特殊催化剂将笑气转化为天然的气体与水。
凭借这一能效极高的“宁波”工艺，宁波新工厂将达到最高的国际环保标准。
         </p>
         <p>
           &nbsp;&nbsp;例如，生产工艺的优化极大地降低生产过程中的笑气和氮氧化物。
此外，残留的尾气将被特殊的废气处理装置处理，残渣经过稀硝酸回用装置处理，重新作为生产原材料使用。
与大多数中国氧化铁生产厂商使用的传统彭尼曼红色工艺相较，“宁波”工艺通过特殊催化剂将笑气转化为天然的气体与水。
凭借这一能效极高的“宁波”工艺，宁波新工厂将达到最高的国际环保标准。
         </p>
    
	</div>
</div>	
</body>

</html>