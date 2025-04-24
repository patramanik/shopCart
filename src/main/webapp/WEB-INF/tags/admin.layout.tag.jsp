<%@tag description="Admin dashboard layout" pageEncoding="UTF-8"%>
<%@attribute name="title" required="true" type="java.lang.String"%>
<%@attribute name="extraHead" fragment="true" required="false"%>
<%@attribute name="extraScripts" fragment="true" required="false"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title} | Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <jsp:invoke fragment="extraHead"/>
</head>
<body class="bg-gray-50">
    <div class="flex relative">
        <%@ include file="/WEB-INF/admin/sidebar.jsp" %>


		 <!-- Main Content -->
        <main class="flex-1 min-h-screen w-full md:ml-64 transition-all duration-300">
        
        
                        <jsp:doBody/>
        </main>
        

    </div>

    <!-- Global Scripts -->
    <%@ include file="/WEB-INF/admin/scripts.jsp" %>
    
    <!-- Page-specific Scripts -->
    <jsp:invoke fragment="extraScripts"/>
</body>
</html>