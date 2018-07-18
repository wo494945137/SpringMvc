<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>龙之游股权积分后台</title>
<link href="/static/echarts/datetimepicker/v3/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="/static/echarts/datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<link href="/static/echarts/css/main.css" rel="stylesheet" >

<style>

</style>
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
         <h3 class="title">添加股权</h3>
         <form action="/staff/addequity.htm" method="post">
	         <input name="id" id="id" type="hidden" value="${staff.id}" />
	         <div class="form-group">      
	               <label>添加股数:</label><input class="" type="text" name="equityval" required id="equityval">
	         </div>

           <!-- 时间 2017-7-3 -->
	          <div class="form-group">
                <label for="createTime">添加时间:</label>
                <!-- 时间的input 2017-7-3 -->
                <input id="createTime" name = "createTime" class="form-control time-sheng" type="text"  readonly>
            </div>

	         <div class="form-btn"> 
	            <input type="submit" value="提交">  
	            <input type="button" value="取消" onclick="window.location.href='/staff/list.htm'">
	         </div> 
         </form>  
   </div>
   
<script type="text/javascript" src="/static/echarts/datetimepicker/v3/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="/static/echarts/datetimepicker/v3/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/static/echarts/datetimepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="/static/echarts/datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script> 

  <script>
  window.onload = function(){
	  var equityval = document.getElementById('equityval');
	    equityval.oninput = function(){
	    	var val = equityval.value;
	    	 var valnew = val.replace(/([^0-9\-])/,'');
	    	equityval.value = valnew;
	    }
  }
 

      /*时间  js部分  2017-7-3*/
      $(function(){
        $('#createTime').datetimepicker({
        	minView:'month',
            language:  'zh-CN',
            format: "yyyy-mm-dd",
            autoclose:true
          })
      })

	
</script>  
  	 
  	

</body>
</html>



