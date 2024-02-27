<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%@ page import="com.action.StaticsAction" %>
<%@ page import="com.opensymphony.xwork2.ActionContext" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
    String path = request.getContextPath();
    SimpleDateFormat sdfTime = new SimpleDateFormat("yyyy-MM-dd- HH-mm-ss");
    String sGenCode = sdfTime.format(new Date());
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="<%=path%>/bootstrap3/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="<%=path%>/bootstrap3/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="<%=path%>/bootstrap3/css/bootstrap-datetimepicker.css" />
    <script src="<%=path%>/bootstrap3/js/jquery-1.11.2.min.js"></script>
    <script src="<%=path%>/bootstrap3/js/bootstrap.min.js"></script>
    <script language="javascript">

    </script>
</head>

<body>
<div class="col-lg-12">
    <div>
        <ol class="breadcrumb">
            <li><span class="glyphicon glyphicon-home"></span>&nbsp;<a
                    href="#">主页</a></li>
            <li class="active">信息统计</li>
        </ol>
    </div>
    <form action="<%=path %>/statics!statics.action" name="formAdd" method="post">
        <table style="border:3px black;background: #FFFFFF;" cellspacing="0" >
            <thead>
            <tr>
                <th style="width: 20%;">
                    序号
                </th>
                <th style="width: 20%;">
                    时间
                </th>
                <th style="width: 20%;">
                    金额
                </th>

            </tr>
            </thead>

            <s:property value="%{#session.count}"/>
            <s:property value="count"/>|${count }<br>


            <td>
               <s:property value="%{#session.count}"/>
            </td>

            <td>
               <s:property value="%{#session.datePlot[]}"/>
            </td>
            <td>
                <s:property value="%{#session.moneyPlot[0]}"/>
            </td>


        </table>
    </form>
</div>
<script src="<%=path%>/bootstrap3/js/bootstrap-datetimepicker.js"></script>
<script src="<%=path%>/bootstrap3/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        language:  'zh',
        format: 'yyyy-mm-dd'
    });
</script>
</body>
</html>
