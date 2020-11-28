<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="../jsp/base.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>test页面</title>
<link href="css/box.css" rel="stylesheet" type="text/css" />
<link rel="css/jquery.ui.datepicker.css" style="stylesheet">
<link rel="css/jquery-ui.css">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<style type="text/css">
/* div {width:100px;height:100px;border: 1px #A3BFE7 solid;} */
img {width:atuo;height:atuo;}
div #upload{
 border: 0px;
 width:20px;
}

#picture_main{
height:100%;
width:1000px;
position: absolute;
left: 0px;
}

#picture_main_type{
 position: absolute;
 left: 5px;
 top: 5px;
 height: 200px;
 width:174px;
}

#picture_folder{
margin:10px; 
 height: 152px;
 width:152px;
 text-align: center;
}

#picture_title{
 margin:10px; 
 border: 1px solid #F00;
 width: 152px;
 line-height: 24px;
 text-align: center;
}

#showpic{
width:1000px;
}

#showpic_small{
background-image: url("${ctx}/images/border1.gif");
background-repeat:no-repeat;
width:277px;
height:277px;
}

#showpic_big{
margin-top: 30px;
margin-left: 42.25px;
height: 327px;
width: 277px;
float: left;
}

#showpic_title{
width: 277px;
line-height: 50px;
text-align: center;
}

img{
padding:35px;
height: 210px;
width: 210px;
}

#back{
text-align: center;
}

a{
text-decoration: none;
}
</style>


<script type="text/javascript">
   
   function showOrgPic(path){
	   window.parent.open("showOrgPic.do?path="+path);
   }
   
   
   function download2(){
	  location.href="${ctx}/hello/test.do";
   }

</script>
		
</head>

<body>
   
    
    <div id="showpic" >
        <div id="back"><a href="${ctx }/hello//transferToPicView.do">返回图片管理</a><a href="javascript:void(0);" onclick='download2()'>&nbsp;&nbsp;download</a></div>
	    <c:forEach items="${filelist}" var="item">
	      <div id="showpic_big">
	       <div id="showpic_small">
	         <a href="javascript:void(0);" onclick="showOrgPic('${item.path}')" title="查看原图"><img alt="" src="e:\home\upload\photo\2017-12-13\201712131513170451734430.JPG"></a>
	       </div>
	       <div id="showpic_title">
	            <span style="font-weight: bold;">${item.title }</span>
	       </div>
	      </div> 
	    </c:forEach>
    </div>
	
</body>

</html>