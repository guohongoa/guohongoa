<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page session="false" %>
<html>
<head>
<title>文件上传页</title>
</head>
<body>
 
    <form method="POST" action="uploadFile" enctype="multipart/form-data">
        File to upload: <input type="file" name="file"><br /> 
        Name: <input type="text" name="name"><br /> <br /> 
        <input type="submit" value="Upload"> 点击上传文件!
    </form>
     
</body>
</html>