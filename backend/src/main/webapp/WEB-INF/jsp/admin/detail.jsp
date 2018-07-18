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
       <h3 class="title">添加/编辑管理员</h3>
      <form  action="/admin/save.htm" method="post">
         <input name="id" id="id" type="hidden" value="${admin.id}" />
         <div class="form-group">
             <label>姓名 :</label><input class="form-control" type="text" name="name" required id="name"  value="${admin.name}">
		 </div>
		<div class="form-group">
             <label>账号 :</label><input class="form-control" type="text" name="account" required id="account"  value="${admin.account}">
        </div>
        <div class="form-group">
              <label>密码 :</label><input class="form-control" type="password" name="password" required id="password"  value="${admin.password}">
         </div>
        <div class="form-btn"> 
            <input type="submit" value="提交">  
            <input type="button" value="取消" onclick="window.location.href='/admin/list.htm'">      
                
        </div>              
    </form>
   </div>


</body>
</html>



