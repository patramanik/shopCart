<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="WEB-INF/admin/include.jsp" %>
<title>Category</title>
</head>
<body class="bg-gray-50">
    <div class="flex relative">

         <%@include file="WEB-INF/admin/sidebar.jsp" %>

        <!-- Main Content -->
        <main class="flex-1 min-h-screen w-full md:ml-64 transition-all duration-300">
		
		 <%@include file="WEB-INF/admin/header.jsp" %>
		 
		 
		 
		 	<%@include file="WEB-INF/admin/category.jsp" %>
		 
	
            
        </main>
    </div>

    <%@include file="WEB-INF/admin/scripts.jsp" %>
</body>
</html>
