<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎页面</title>
<link href="css/box.css" rel="stylesheet" type="text/css" />



<script src="jsp/js/jquery-1.10.2.js" type="text/javascript"></script>

<script type="text/javascript">

	var audio;
	window.onload = function() {
		initAudio();
	}
	var initAudio = function() {
		//audio = document.createElement("audio")
		//audio.src='Never Say Good Bye.ogg'
		audio = document.getElementById('audio');
	}
	function getCurrentTime(id) {
		alert(parseInt(audio.currentTime) + '：秒');
	}

	function playOrPaused(id, obj) {
		if (audio.paused) {
			audio.play();
			obj.innerHTML = '暂停';
			return;
		}
		audio.pause();
		obj.innerHTML = '播放';
	}

	function hideOrShowControls(id, obj) {
		if (audio.controls) {
			audio.removeAttribute('controls');
			obj.innerHTML = '显示控制框'
			return;
		}
		audio.controls = 'controls';
		obj.innerHTML = '隐藏控制框'
		return;
	}
	function vol(id, type, obj) {
		if (type == 'up') {
			var volume = audio.volume + 0.1;
			if (volume >= 1) {
				volume = 1;

			}
			audio.volume = volume;
		} else if (type == 'down') {
			var volume = audio.volume - 0.1;
			if (volume <= 0) {
				volume = 0;
			}
			audio.volume = volume;
		}
		document.getElementById('nowVol').innerHTML = returnFloat1(audio.volume);
	}
	function muted(id, obj) {
		if (audio.muted) {
			audio.muted = false;
			obj.innerHTML = '开启静音';
		} else {
			audio.muted = true;
			obj.innerHTML = '关闭静音';
		}
	}
	//保留一位小数点

	function returnFloat1(value) {
		value = Math.round(parseFloat(value) * 10) / 10;
		if (value.toString().indexOf(".") < 0) {
			value = value.toString() + ".0";
		}
		return value;
	}
</script>
		
</head>

<body>
   <a href="javascript:void(0);" onclick="getCurrentTime('firefox');">获取播放时间</a>
<a href="javascript:void(0);" onclick="playOrPaused('firefox',this);">播放</a>
<a href="javascript:void(0);" onclick="hideOrShowControls('firefox',this);">隐藏控制框</a>
<a href="javascript:void(0);" onclick="muted('firefox',this);">开启静音</a>
<input type="button" value="+" id="upVol" onclick="vol('firefox' , 'up' , this )"/>音量<input type="button" value="-" onclick="vol('firefox' , 'down' ,this )"/>
<audio src="voice/DearDeer.ogg" id="audio" controls="controls" ></audio>

</body>
</html>
