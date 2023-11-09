<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    response.sendRedirect("");
%>
<%
    request.setAttribute("name","Hồ Xuân Hùng");
    request.getRequestDispatcher("/home.jsp").forward(request,response);
%>
<%--jspInit()--%>
<%!
    public void jspInit(){
        System.out.println("Bắt đầu trang jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%!
    public void doGet(HttpServletRequest request,HttpServletResponse response){
        System.out.println("Nhận yêu cầu nào đó");
    }
%>
<h1><%= "Hello World!" %>
<%--Khai báo biến--%>
    <%!
        int a = 100;
        String name = "Hồ Xuân Hùng";
    %>
<%--Biểu thức--%>
<%--    trả về bình phương của a     --%>
    <p>Giá trị bình phương của 100 là : <%=Math.pow(a,2)%></p>
    <p>Tên của tôi là : <%=name%></p>
<%--code--%>
    <%
        if(a>100) {
            System.out.println("Hơn hơn 100");
        } else if (a<100) {
            System.out.println("Bé hơn 100");
        }else {
            System.out.println("a = 100");
        }
    %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>
<%!
    public void jspDestroy(){
        System.out.println("Hủy Jsp");
    }
%>