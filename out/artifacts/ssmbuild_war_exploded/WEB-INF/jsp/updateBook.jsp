<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        input{
            margin-bottom: 8px;
        }
    </style>
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-6 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="col-md-4 column" style="float: left">
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="bookID" value="${book.getBookID()}"/>
        书籍名称：<input type="text" name="bookName" value="${book.getBookName()}" class="form-control"/>
        书籍数量：<input type="text" name="bookCounts" value="${book.getBookCounts()}" class="form-control"/>
        书籍详情：<input type="text" name="detail" value="${book.getDetail() }" class="form-control"/>
        <input type="submit" value="提交" class="btn btn-primary"/>
    </form>
    </div>

</div>
</body>
</html>