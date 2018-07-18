<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>龙之游股权积分后台</title>
<link href="/static/echarts/datetimepicker/v3/bootstrap/css/bootstrap.min.css" rel="stylesheet" >
<link href="/static/echarts/css/main.css" rel="stylesheet" >
</head>
<body>
<div class="nav">
<a  href = "/staff/list.htm">员工列表</a>
    <a  href = "/staff/edit.htm?id=0">添加员工</a>
	<a  href = "/equityrecord/list.htm">股权变更记录</a>
　　　　<a  href = "/equityrecord/report.htm">股权报表</a>
<a  href = "/image/list.htm">图片列表</a>
<a  href = "/image/simpleFileupload.htm">添加图片</a>
	<a class="quit" href="/login.jsp">退出</a>
</div>
   <div class="form">
         <h3 class="title">上传图片</h3>
         <form action="/image/upload.htm" method="post" enctype="multipart/form-data">
	         <input name="id" id="id" type="hidden" value="${image.id}" />
	         <div class="form-group">  
	               <input type="hidden" name="imageurl" />    
	               <div class="image-upload-wrap">
	               		<input id="file" class="input-upload" type="file" name="file" >
	               		<img src="/static/echarts/img/image.png" id="image" class="image-upload" onclick="$(this).prev().click();"/>
	               </div> 
	         </div>
	         <div class="form-group">  
	             <label>排序号 :</label><input class="" type="number"  name="number" required id="number"  value="${image.number}">
	         </div>
	         <div class="form-btn"> 
	            <input type="submit" value="提交"> 
	             <input type="button" value="取消" onclick="window.location.href='/image/list.htm'">      
	         </div> 
         </form>  
   </div>
   
<script type="text/javascript" src="/static/echarts/datetimepicker/v3/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="/static/echarts/datetimepicker/v3/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){

	
	    showImage('file','image');
	    function showImage(ipt, img) { 
			 var image = document.getElementById(img); //获取显示图片的div元素 
			 var input = document.getElementById(ipt); //获取选择图片的input元素 
 
			 if (typeof FileReader === 'undefined') { 
			     alert("浏览器版本过低，请先更新您的浏览器~"); 
			     input.setAttribute('disabled', 'disabled'); 
			 } else { 
			 
			  input.onchange = function(){
				  readFile(input,image);
			  }
			 } 
	     }
		  
		 function readFile(ipt,img) { 
		     var file = ipt.files[0]; //获取file对象 
		     //判断file的类型是不是图片类型。 
		     if(file){
		    	 if (!/image\/\w+/.test(file.type)) { 
				  	 alert("请上传一张图片~"); 
				  	 return false; 
				  } 
		    	 var reader = new FileReader(); 
				  	reader.readAsDataURL(file); 
				  	reader.onload = function(e) { 
					    // 创建一个新增的图片和文字input 
				  		img.setAttribute('src', reader.result);
				  	  } 
		         }
		  	} 
	
})
	
</script>
<script>
  window.onload = function(){
	  var equityval = document.getElementById('number');
	    equityval.oninput = function(){
	    	var val = equityval.value;
	    	var valnew = val.replace(/[^0-9]/,'');
	    	equityval.value = valnew;
	    }
  }
  	    
  		
</script>
</body>
</html>