<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="../jsp/base.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>test页面</title>
<link href="${ctx }/css/main.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/css/html5uploader.css" rel="stylesheet" type="text/css" />


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript" src="${ctx }/js/jquery.html5uploader.js"></script>


<style type="text/css">
/* div {width:100px;height:100px;border: 1px #A3BFE7 solid;} */
img {width:atuo;height:atuo;}
div #upload{
 border: 0px;
 width:20px;
}

#showpic,#showvedio,#showmusic{
 padding:10px; width:300px; height:50px;

    border: 4px solid #000000;

    -moz-border-radius: 15px; 

    -webkit-border-radius: 15px; 

    border-radius:15px;   
}

.ui-progressbar {
    position: relative;
  }
  .progress-label {
    position: absolute;
    left: 50%;
    top: 4px;
    font-weight: bold;
    text-shadow: 1px 1px 0 #fff;
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
	
	function reset2(){
		$('#uploadImage').val('');
		$('#uploadPreview').attr('src','../images/admin.png');
	}
	
	function changeType(){
		var type=$('#filetype option:selected').val();
		if(type=="0"){
			$('#showpic').hide();
			$('#showmusic').hide();
			$('#showvedio').hide();
		}
		else if(type=="1"){
			$('#showpic').show();
			$('#showmusic').hide();
			$('#showvedio').hide();
		}else if(type=="2"){
			$('#showmusic').show();
			$('#showpic').hide();
			$('#showvedio').hide();
		}else if(type=='3'){
			$('#showvedio').show();
			$('#showpic').hide();
			$('#showmusic').hide();
		}
		
	}
	
	function load(num){
		if(num == 1){//图片上传
			if($('#uploadImage').val() == ''){
				alert('请上传文件!');
				return false;
			}
			if($('#folder').val() == ''){
				alert("请选择文件夹!");
				return false;
			}
		  $('#form1').submit();
		}
		else if(num ==2){//上传音乐
			
		}
		else if(num ==3){//上传视频
			
		}
	}
	
	//进度条
	var uploadprogressbar = "";
    var progressLabel = "";
	$(function(){
		
		uploadprogressbar = $( "#uploadprogressbar" );
		progressLabel = $( ".progress-label" );
		
		uploadprogressbar.progressbar({
		     value: false,
		     change: function() {
		       progressLabel.text( progressbar.progressbar( "value" ) + "%" );
		     },
		     complete: function() {
		       progressLabel.text( "完成！" );
		     } 
		   });
		
		
		var arr=new Array();
		var i=0;
		$('#uploadmusicfile').html5uploader({
			auto:true,
			multi:true,
			buttonText:"附件(不能超过20M)",
			fileSizeLimit:1024000*20,
			url:'${ctx}/hello/uploadMusic.do',
			funDeleteFile:function(){
				
			},
			onUploadStart:function(){
				i++;
				show();
				},
			onProgress:function(){
				setInterval(getProgressBar(), 4000);
			},
			onUploadComplete:function(data){
				$('#progress_content').dialog('close');
				  alert(data.backId);
				}
			});
		});
	
	function f(path){
		alert(path);
		location.href="www.baidu.com";
	}
	
	/* function show(){
		$('#progress').dialog({
			title:"loaging...",
			width:"300px",
			position:"center",
			modal:true
		});
		
		$('#progress').dialog('open');
	} */
	
	
	
	function show(){
		$('#progress_content').dialog({
			title:"loaging...",
			width:"300px",
			position:"center",
			modal:true
		});
	}
	
	 
	function getProgressBar(){
		$.ajax({
			type:"post",
			dataType:"json",
			url:'${ctx}/hello/getProgressBar.do',
			success:function(data){
				$('#total').html((data.status.pContentLength/1000/1000).toFixed(2)+"MB");
				$('#hasFinished').html((data.status.pBytesRead/1000/1000).toFixed(2)+"MB");
				uploadprogressbar.progressbar("value",parseInt(data.status.pBytesRead/data.status.pContentLength*100));
				progressLabel.text( progressbar.progressbar( "value" ) + "%" );
			}
		});
	}
	
	
  function t(){
	  var a=$('#test').html();
	  var r= new Array();
	  if(/^\s*?$/.test(a)){
		  alert('null');
	  }else{
		  $("input[name='fa']").each(function(){
			 r.push($(this).val());
		  });
		  alert(r);
	  }
  }
	  
</script>

		
</head>

<body>
	<span style="font-family: 隶书;font-size: 18px">请选择上传类型:</span>
    <select id="filetype" onchange="changeType()">
       <option value="0">--请选择--</option>
       <option value="1">图片上传</option>
       <option value="2">音乐上传</option>
       <option value="3">视频上传</option>
    </select>
    
    <!-- test ************************************-->
     <input type="button" value="TT" onclick="t()">
     
     <div id="test">
        <input type="hidden" name="fa" value="1"> 
        <input type="hidden" name="fa" value="2"> 
        <input type="hidden" name="fa" value="3"> 
     </div>
    
    <!-- ***************************************** -->
    
    <!-- 图片上传div -->
    <div  style="width:600px;height:362px;
               margin: auto;border:1px #87cefa solid;display: none" id="showpic">
        <div style="background: #87cefa;height:60px;text-align: center;line-height: 60px">
                          <span id="title">图片上传</span> 
        </div>
        <div id="start2" style="height: 300px;width:300px;float: right;" >
	        <img id="uploadPreview" src="${ctx }/images/admin.png" width="300px" height="300px"/>
	     </div>
        <div style="width:200px;">
           <form action="uploadPhoto.do" id="form1" enctype="multipart/form-data" method="post">
	          <table style="width: 300px;">
	             <tr>
	                <td style="text-align: center;height:80px;">&nbsp;上传文件:
	                &nbsp;<input id="uploadImage" type="file" name="uploadImage"
				                  onchange="viewPic()" /></td>
	             </tr>
	             <tr>
	                <td style="text-align: center;height:80px;">&nbsp;标题:
	                &nbsp;<input id="pic_title" type="text" name="pic_title"/></td>
	             </tr>
	             <tr>
	                <td style="text-align: center;height:80px;">&nbsp;文件夹:
	                &nbsp;
	                 <select name="folder" id="folder">
	                    <option value="">--请选择文件夹--</option>
	                     <c:forEach items="${picFolders }" var="item">
	                         <option value="${item.id}">${item.flag }</option>
	                     </c:forEach>
	                 </select>
	                </td>
	             </tr>
	             <tr>
	                <th><input type="button" value="上传" onclick="load('1')">
	                       &nbsp;<input type="button" value="重置" onclick="reset2()"></th>
	             </tr>
	          </table>
           </form>
        </div>
    </div>
    
    <!-- 音乐上传div -->
    <div  style="width:400px;height:362px;
               margin: auto;border:1px #87cefa solid;display: none" id="showmusic">
        <div style="background: #87cefa;height:60px;text-align: center;line-height: 60px">
                          <span id="title">音乐上传</span> 
        </div>
        
        <div style="width:200px;">
           <form action="uploadMusic.do" id="form2" enctype="multipart/form-data" method="post">
	          <table style="width: 300px;">
	             <tr>
	                <td style="text-align: center;height:80px;">&nbsp;上传文件:<div id="uploadmusicfile"></div><div id="showDiv"></div>
	                <div id="showMusicDiv"></div>
	                <!-- &nbsp;<input id="uploadmusicfile" type="file" name="uploadmusicfile" multiple="multiple"/> --></td>
	             </tr>
	             <tr>
	                <td style="text-align: center;height:80px;">&nbsp;歌手名称:
	                &nbsp;<input id="uploadmusic" type="text" name="uploadmusic"/></td>
	             </tr>
	             <tr>
	                <th><input type="button" value="上传" onclick="load('2')">
	                       &nbsp;<input type="reset" value="重置"></th>
	             </tr>
	          </table>
           </form>
        </div>
    </div>
    
    <!-- 视频上传div -->
    <div  style="width:400px;height:362px;
               margin: auto;border:1px #87cefa solid;display: none" id="showvedio">
        <div style="background: #87cefa;height:60px;text-align: center;line-height: 60px">
                          <span id="title">视频上传</span> 
        </div>
        
        <div style="width:200px;">
           <form action="uploadVedio.do" id="form3" enctype="multipart/form-data" method="post">
	          <table style="width: 300px;">
	             <tr>
	                <td style="text-align: center;height:50px;">&nbsp;标题:
	                &nbsp;<input id="title" type="text" name="title"/></td>
	             </tr>
	             <tr>
	                <td style="text-align: center;height:50px;">&nbsp;上传文件:
	                &nbsp;<input id="uploadVedio" type="file" name="uploadVedio"/></td>
	             </tr>
	             <tr>
	                <th><input type="submit" value="上传">
	                       &nbsp;<input type="reset" value="重置"></th>
	             </tr>
	          </table>
           </form>
        </div>
    </div>
	
	<%-- <div id="progress" style="display:none;">
	    <img alt="" src="${ctx }/images/load.gif">
	</div> --%>
	
	<!-- 进度条 --> 
	<div id="progress_content" style="display:none;">
       <div id="uploadprogressbar"><div class="progress-label">文件上传中...</div></div>
       <div id="uploadInfo">文件大小:<span id="total"></span>&nbsp;已上传:<span id="hasFinished"></span></div>
  </div>
  
   
</body>

</html>