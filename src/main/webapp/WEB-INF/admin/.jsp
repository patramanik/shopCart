<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="bg-gray-50">
    <div class="flex">
        <%-- Sidebar, Header, etc. --%>

        <main class="flex-1 min-h-screen md:ml-64 p-4 md:p-8 transition-all duration-300">
            <jsp:include page="${contentPage}" />
        </main>
    </div>
</body>
</html>
