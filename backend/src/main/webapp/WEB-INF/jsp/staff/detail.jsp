<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>龙之游股权积分后台</title>
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
    	<h3 class="title">添加/编辑员工</h3>
        <form  action="/staff/save.htm" method="post">
           <input name="id" id="id" type="hidden" value="${staff.id}" />
            <input name="deleted" id="deleted" type="hidden" value="${staff.deleted}" />
            <div class="form-group">
                 <label>部门 :</label><input class="form-control" type="text" name="department" required id="department"  value="${staff.department}">
           </div>
           <div class="form-group">
                 <label> 姓名 :</label><input class="form-control" type="text" name="uname" required id="uname"  value="${staff.uname}">
           </div>
            <div class="form-group">
                 <label> 状态 :</label>
                 <select class="form-control" id="status" name="status">
    			 <option value="1">在职</option>
                 <option value="2">离职</option>
                 </select>
           </div>
           <div class="form-group">
                 <label>股权余额 :</label><input class="form-control" type="number"  name="equityval" required id="equityval"  value="${staff.equityval}">
           </div>
           <div class="form-btn">
               <input type="submit" value="提交">  
               <input type="button" value="取消" onclick="window.location.href='/staff/list.htm'">   
           </div>   
         </form>
   </div>
   
<script>
  window.onload = function(){
	  var equityval = document.getElementById('equityval');
	    equityval.oninput = function(){
	    	var val = equityval.value;
	    	var valnew = val.replace(/[^0-9]/,'');
	    	equityval.value = valnew;
	    }
  }
  	    
  		
</script>


</body>
</html>



