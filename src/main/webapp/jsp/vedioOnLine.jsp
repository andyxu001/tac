<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>test页面</title>
<link href="css/box.css" rel="stylesheet" type="text/css" />
<link rel="css/jquery.ui.datepicker.css" style="stylesheet">
<link rel="css/jquery-ui.css">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="jsp/js/jquery-1.10.2.js" type="text/javascript"></script>
<script type="text/javascript" src="jsp/js/jquery-ui.js"></script>


<style type="text/css">
/* div {width:100px;height:100px;border: 1px #A3BFE7 solid;} */
img {width:atuo;height:atuo;}
div #upload{
 border: 0px;
 width:20px;
}
</style>
<script type="text/javascript">

//方式 一:
 function viewPic() {

	var oFReader = new FileReader();
		oFReader.onload = function(e) {
			document.getElementById("uploadPreview").src = e.target.result;
		}
		if (document.getElementById("uploadImage").files.length === 0) {
			return;
		}
		var oFile = document.getElementById("uploadImage").files[0];
		oFReader.readAsDataURL(oFile);
	} 
	
	
	function displayUpload(){
		 $('#uploadRoot').dialog({
			autoOpen:false,
			width:"800",
			height:"600",
			hide:"slide",
			show:"slide",
			modal:true
		}); 
		$('#uploadRoot').dialog('open');
	}
	
	

</script>

		
</head>

<body>
   
    
    <div id="showpic" style="width:900px; height: 90%" >
	   
	    <c:forEach items="${vedioList}" var="item">
	        <video  controls="controls" width=300px;height=300px;>
                  <source src="${item.path }" >
            </video >
	    </c:forEach>
	    
    </div>
    

    
    
	
</body>

</html>