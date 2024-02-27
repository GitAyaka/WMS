<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>自来水分公司水费管理系统</title>
    <link rel="stylesheet" href="<%=path %>/css/pintuer.css">
    <link rel="stylesheet" href="<%=path %>/css/admin.css">
    <script src="<%=path%>/bootstrap3/js/jquery-1.11.2.min.js"></script>
    <script src="<%=path%>/bootstrap3/js/bootstrap.min.js"></script>
    <style type="text/css">
        body{
            background:#68a5f8;
        }
    </style>
    <script src="<%=path %>/js/jquery.js"></script>
    <script src="<%=path %>/js/pintuer.js"></script>
    <script language="javascript">
        function check()
        {
            if(document.formAdd.loginname.value=="")
            {
                alert("请输入用户编号");return false;
            }
            if(document.formAdd.pwd.value=="")
            {
                alert("请输入密码");return false;
            }
            if(document.formAdd.realname.value=="")
            {
                alert("请输入真实姓名");return false;
            }
            if(document.formAdd.address.value=="")
            {
                alert("请输入地址");return false;
            }
            if(document.formAdd.tel.value=="")
            {
                alert("请输入电话");return false;
            }
            if(document.formAdd.bumen.value=="")
            {
                alert("请输入社区区域");return false;
            }
            if(document.formAdd.status.value=="")
            {
                alert("请输入用户状态");return false;
            }

            return true;
        }
    </script>

</head>
<body>
<div class="container">
    <div class="line" style="margin-top: 150px;">
        <div class="xs6 xm4 xs3-move xm4-move">
            <form action="<%=path %>/user!register.action" name="formAdd" method="post">
                <table class="table table-hover  table-bordered table-striped">
                    <tr>
                        <th colspan="4">&nbsp;用户注册&nbsp;</td>
                    </tr>
                    <tr>
                        <th width="50%">
                            用户编号
                        </th>
                        <td width="50%">
                            <input type="text" id="loginname" name="loginname" />
                        </td>
                    </tr>
                    <tr>
                        <th width="50%">
                            密码
                        </th>
                        <td width="50%">
                            <input type="text" id="pwd" name="pwd" />
                        </td>
                    </tr>
                    <tr>
                        <th width="50%">
                            真实姓名
                        </th>
                        <td width="50%">
                            <input type="text" id="realname" name="realname" />
                        </td>
                    </tr>
                    <tr>
                        <th width="50%">
                            地址
                        </th>
                        <td width="50%">
                            <input type="text" id="address" name="address" />
                        </td>
                    </tr>
                    <tr>
                        <th width="50%">
                            电话
                        </th>
                        <td width="50%">
                            <input type="text" id="tel" name="tel" />
                        </td>
                    </tr>
                    <tr>
                        <th width="50%">
                            社区区域
                        </th>
                        <td width="50%">
                            <select id="bumen" name="bumen">
                                <c:forEach items="${quyuList}" var="Quyu">
                                    <option value="${Quyu.name}">${Quyu.no}_${Quyu.name}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th width="50%">
                            用户状态
                        </th>
                        <td width="50%">
                            <input type="text" id="status" name="status" />
                        </td>
                    </tr>
                    <tr>
                        <th width="50%">
                            &nbsp;
                        </th>
                        <td width="50%">
                            <input type="submit" value="提交" onclick="return check()"/>&nbsp;
                            <input type="reset" value="重置"/>&nbsp;
                        </td>
                    </tr>
                </table>
            </form>
            <div class="panel-foot text-center" target="_blank"><a href="userlogin.jsp">返回用户登录</a></div>
            <div class="text-right text-small text-gray padding-top"></div>
        </div>
    </div>

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