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


<div class="list">     
<table class="table">
	<thead>
		<tr>
			<th>编号</th>
			<th>缩略图</th>
			<th>排序号</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody id="table2">
		<c:forEach var="var" items="${List}">        
		<tr>   
            <td style="line-height:100px"> <span>${var.id}</span></td>
			<td style="line-height:100px"> <span><img width="100" height="100" src="${var.imgurl}"></span></td>
			<td style="line-height:100px"> <span>${var.number}</span> </td>
			<td style="line-height:100px"><a href = "/image/del.htm?id=${var.id}"> <span>删除</span> </a> </td>                
		</tr>
		  </c:forEach>  
		
	</tbody>
</table>
</div>
<div class="pagination clear">
	<p class="pagination-left"><span id="totalCount"></span></p>
	<p class="pagination-right">
		<span id="spanFirst">第一页</span> &nbsp;
		<span id="spanPre">上一页</span> &nbsp;
		<span id="spanNext">下一页</span>&nbsp;
		<span id="spanLast">最后一页</span>
		<span>&nbsp;</span>&nbsp;第<span id="spanPageNum"></span>页/共<span id="spanTotalPage"></span>页<span>&nbsp;<input type="text" name="" value="" id="tzys" style="width: 30px;text-align:center;">&nbsp;<a href="javascript:tz();" id="tz">跳 转</a></span></p>
</div>

<script type="text/javascript" src ="/static/echarts/js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="/static/echarts/datetimepicker/v3/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/static/echarts/datetimepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="/static/echarts/datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
</body>
</html>

<script>
     var theTable = document.getElementById("table2");
     var totalPage = document.getElementById("spanTotalPage");
     var pageNum = document.getElementById("spanPageNum");
     var spanPre = document.getElementById("spanPre");
     var spanNext = document.getElementById("spanNext");
     var spanFirst = document.getElementById("spanFirst");
     var spanLast = document.getElementById("spanLast");

     var numberRowsInTable = theTable.rows.length;
     totalCount.innerHTML="总计："+numberRowsInTable+"条记录";
     var pageSize = 20; //每页的所显示的条数
     var page = 1;

     //下一页
     function next() {
         hideTable();
         currentRow = pageSize * page;
         maxRow = currentRow + pageSize;
         if (maxRow > numberRowsInTable) maxRow = numberRowsInTable;
         for (var i = currentRow; i < maxRow; i++) {
             theTable.rows[i].style.display = '';
         }
         page++;
         if (maxRow == numberRowsInTable) { nextText(); lastText(); }
         showPage();
         preLink();
         firstLink();
     }
     //上一页
     function pre() {
         hideTable();
         page--;
         currentRow = pageSize * page;
         maxRow = currentRow - pageSize;
         if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
         for (var i = maxRow; i < currentRow; i++) {
             theTable.rows[i].style.display = '';
         }

         if (maxRow == 0) { preText(); firstText(); }
         showPage();
         nextLink();
         lastLink();
     }

     //第一页
     function first() {
         hideTable();
         page = 1;
         currentRow = pageSize * page;
         maxRow = currentRow - pageSize;
         if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
         for (var i = maxRow; i < currentRow; i++) {
             theTable.rows[i].style.display = '';
         }

         if (maxRow == 0) { preText(); firstText(); }
         showPage();
         nextLink();
         lastLink();
     }

     //最后一页
     function last() {
         hideTable();
         page = pageCount();
         currentRow = pageSize * (page - 1);
         for (var i = currentRow; i < numberRowsInTable; i++) {
             theTable.rows[i].style.display = '';
         }
         showPage();
         preLink();
         nextText();
         firstLink();
         lastText();
     }

     //跳转第几页
     function tz() {
      //var tzys = $("#tzys").val();
      	var tzys = document.getElementById("tzys").value;
         hideTable();
         page = tzys;
         if(page>pageCount()){
           alert("你输入的页数超过总页数");
           page = 1;
         }
         currentRow = pageSize * page;
         maxRow = currentRow - pageSize;
         if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
         for (var i = maxRow; i < currentRow; i++) {
             theTable.rows[i].style.display = '';
         }
         if (maxRow == 0) { preText(); firstText();}
         if(page == pageCount()){
           showPage();
           firstLink();
           preLink();
           nextText();
           lastText();
         }
         if(page==1){
          preText();
          firstText();
          nextLink();
          lastLink();
         }
         if(page!=1 && page<pageCount()){
           showPage();
           firstLink();
           preLink();
           nextLink();
           lastLink();
         }
         if(page==1 && numberRowsInTable<pageSize){
          preText();
          firstText();
          nextText();
          lastText();
         }

     }

     function hideTable() {
         for (var i = 0; i < numberRowsInTable; i++) {
             theTable.rows[i].style.display = 'none';
         }
     }

     function showPage() {
         pageNum.innerHTML = page;
     }

     //总共页数
     function pageCount() {
         var count = 0;
         if (numberRowsInTable % pageSize != 0) count = 1;
         return parseInt(numberRowsInTable / pageSize) + count;
     }

     //显示链接
     function preLink() { spanPre.innerHTML = "<a href='javascript:pre();' style='border:0px;'>上一页</a>"; }
     function preText() { spanPre.innerHTML = "上一页"; }
     function nextLink() { if(numberRowsInTable != pageSize){spanNext.innerHTML = "<a href='javascript:next();' style='border:0px;'>下一页</a>"; }}
     function nextText() { spanNext.innerHTML = "下一页"; }
     function firstLink() { spanFirst.innerHTML = "<a href='javascript:first();' style='border:0px;'>第一页</a>"; }
     function firstText() { spanFirst.innerHTML = "第一页"; }
     function lastLink() { if(numberRowsInTable != pageSize){spanLast.innerHTML = "<a href='javascript:last();' style='border:0px;'>最后一页</a>"; }}
     function lastText() { spanLast.innerHTML = "最后一页"; }

     //隐藏表格
     function hide() {
         for (var i = pageSize; i < numberRowsInTable; i++) {
             theTable.rows[i].style.display = 'none';
         }
         totalPage.innerHTML = pageCount();
         pageNum.innerHTML = '1';
         if(numberRowsInTable<pageSize){
          nextText();
          lastText();
         }else{
          nextLink();
          lastLink();
         } 
     }
     hide();
</script>




