<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    <!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
	   body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
	   a{text-decoration: none;}
	   div.ti1-bg {
	    background: url("../images/title_bg.png") no-repeat; left: 0px; top: 10px; width: 250px; height: 37px; overflow: hidden; position: absolute; z-index: 1; zoom: 1;
       }
       
       div.ti1-bg span {
	width: 170px; color: rgb(255, 255, 255); line-height: 30px; overflow: hidden; font-size: 14px; font-weight: bold; margin-left: 30px; display: block;
      }
      
      
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=OEMYqGhmpkzE7cINZyx0ZFZ8r6iGx0BD"></script>
	<title>地图展示</title>
</head>
<body>
  <div style="width:1100px;">
    <div style="float:left;border: 1px #ccc solid;width:230px;height: 200px;background-color:#F8F8FF;margin-left: 6px;" class="sb_nav">
       <div class="ti1-bg">
          <span >联系方式</span>
       </div>
       <h3 class="title1"></h3>
       <div id="sidebar" style="margin: 50px;">
          <span style="font-weight: bold;color:#00BFFF">&gt;&nbsp;&nbsp;</span>
          <a href="../jsp/contact.jsp" target="content_frame">
            <span style="color:#4682B4;font-weight: bold;">联系我们</span>
          </a>
       </div>
     </div>
    
	<div style="border: 1px #ccc solid;width:850px;height:800px;background-color: #fff;margin-left: 250px;">
     <div id="allmap" style="border: 3px black solid;width:400px;height:600px;margin: 20px;float:left;"></div>
      <div>
	    <div>
	       <table style="margin: 30px;text-align: right;" >
	           <tr>
	             <td colspan="2" style="color:blue;font-weight: bold;">浙江古信科技有限公司</td>
	           </tr>
	           <tr>
	             <td colspan="2"></td>
	           </tr>
	           <tr>
	             <td colspan="2"></td>
	           </tr>
	           <tr>
	             <td colspan="2"></td>
	           </tr>
	           <tr>
	             <td colspan="2"></td>
	           </tr>
	           <tr>
	             <td colspan="2"></td>
	           </tr>
	           <tr>
	             <td colspan="2"></td>
	           </tr>
	           <tr>
	             <td colspan="2"></td>
	           </tr>
	           <tr>
	             <td colspan="2"></td>
	           </tr>
	           <tr>
	              <td>地址：</td>
	              <td>兰溪市经济开发区兰江街道夏荷路106号</td>
	           </tr>
	           <tr>
	              <td>联系人：</td>
	              <td style="text-align: left;">李小姐</td>
	           </tr>
	           <tr>
	              <td>电话：</td>
	              <td style="text-align: left;">88721274</td>
	           </tr>
	           <tr>
	              <td>网址：</td>
	              <td style="text-align: left;">www.xuyuefei.com</td>
	           </tr>
	       </table>            
	    </div>
     </div>
   </div> 
 </div>  
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");    // 创建Map实例
	map.centerAndZoom(new BMap.Point(119.404, 29.102), 11);  // 初始化地图,设置中心点坐标和地图级别
	//添加地图类型控件
	map.addControl(new BMap.MapTypeControl({
		mapTypes:[
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]}));	  
	map.setCurrentCity("兰溪");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
</script>
    