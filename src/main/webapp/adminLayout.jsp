<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title} | Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="bg-gray-50">
 <div class="flex relative">

         <%@include file="WEB-INF/admin/sidebar.jsp" %>

        <!-- Main Content -->
        <main class="flex-1 min-h-screen w-full md:ml-64 transition-all duration-300">
		
		 <%@include file="WEB-INF/admin/header.jsp" %>
		 
		 <%-- <main-content>
		 
		 	<%@include file="WEB-INF/admin/admin-home.jsp" %>
		 
		 </main-content> --%>
         
         <jsp:include page="${contentPage}" />   
            
        </main>
    </div>

    <%@include file="WEB-INF/admin/scripts.jsp" %>

</body>
</html>
