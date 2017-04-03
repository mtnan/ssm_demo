<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@include file="common/tag.jsp"%>

<html lang="zh-CN">
<head>
    <title>秒杀列表</title>
    <%@include file="common/head.jsp"%>
</head>
<body>
    <div class="container">
        <div class="panel panel-default">
            <div class="panel-heading text-center">
                <h2>秒杀列表</h2>
            </div>
            <div class="panel-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>名称</th>
                            <th>库存</th>
                            <th>开始时间</th>
                            <th>结束时间</th>
                            <th>创建时间</th>
                            <th>详情页</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="sk" items="${list}">
                            <tr>
                                <td>${sk.name}</td>
                                <td>${sk.number}</td>
                                <td>
                                    <fmt:formatDate value="${sk.startTime}" pattern="yyyy-MM-dd hh:mm:ss"/>
                                </td>
                                <td>
                                    <fmt:formatDate value="${sk.endTime}" pattern="yyyy-MM-dd hh:mm:ss"/>
                                </td>
                                <td>
                                    <fmt:formatDate value="${sk.createTime}" pattern="yyyy-MM-dd hh:mm:ss"/>
                                </td>
                                <td>
                                    <a class="btn btn-info" href="/seckill/${sk.seckillId}/detail">查看详情</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
