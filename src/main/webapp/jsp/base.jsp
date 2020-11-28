<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setAttribute("ctx", request.getContextPath()); %>

   <!-- 自动完成 -->
 <script type="text/javascript" src="../js/jquery-1.8.0.js"></script>
 <script type="text/javascript" src="../js/jquery.autocomplete.js"></script>
 <link href="${ctx }/css/jquery.autocomplete.css" rel="stylesheet" type="text/css">
 
 <script type="text/javascript" src="../js/jquery-ui-1.10.4.custom.js"></script>
 <script type="text/javascript" src="../js/jquery-ui-1.10.4.custom.min.js"></script>
 <script type="text/javascript" src="../js/jquery-ui-timepicker-addon.js"></script>
 <script type="text/javascript" src="../js/ajaxFileupload.js"></script>
 <script type="text/javascript" src="../js/jquery.multiSelect.js"></script>
 <script type="text/javascript" src="../js/jquery-ui-i18n.js"></script>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
  


 <link href="${ctx }/css/jquery-ui-1.8.9.custom.css" rel="stylesheet" type="text/css">
 <link href="${ctx }/css/jquery.multiSelect.css" rel="stylesheet" type="text/css">




  <script>
      $(function(){
    	  $.datepicker.regional['zh-CN'] = {
   			   closeText: '关闭',
   			   prevText: '上月',
   			   nextText: '下月',
   			   currentText: '今天',
   			   monthNames: ['一月', '二月', '三月', '四月', '五月', '六月',
   			   '七月', '八月', '九月', '十月', '十一月', '十二月'],
   			   monthNamesShort: ['一', '二', '三', '四', '五', '六',
   			   '七', '八', '九', '十', '十一', '十二'],
   			   dayNames: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
   			   dayNamesShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
   			   dayNamesMin: ['日', '一', '二', '三', '四', '五', '六'],
   			   weekHeader: '周',
   			   dateFormat: 'yy-mm-dd',
   			   firstDay: 1,
   			   isRTL: false,
   			   showMonthAfterYear: true,
   			   yearSuffix: '年',
   			   changeYear:true,
   			   timeText:'时间',
   			   hourText:'时',
   			   minuteText:'分'
   			   };
      });
	  </script>
