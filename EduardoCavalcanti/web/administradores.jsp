
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="WEB-INF/header-admin.jsp"/>

<jsp:useBean id="dao" class="DAO.AdminDAO"/>
${dao.setLista()}

<table style="width: 70%; margin-top: 5%; background-color: rgba(0,0,0,0); " class="mx-auto table table-striped table-dark table-borderless">
    <thead >
        <tr><td><H3 class="mx-auto text-light text-monospac">ADMINISTRADORES</H3></td></tr>
        <tr ><td ><a class="text-center" href="criar-novo-adm.jsp"> <button type="button" class=" btn btn-dark">Novo</button></a></td></tr>              
    </thead>
</table>
<c:choose>
    <c:when  test="${not empty dao.lista}">  
            <table style="width: 70%; " class="mx-auto table table-striped table-dark ">
                
                <thead >
                    
                  <tr >
                    <th scope="col" style="color: greenyellow">ID</th>
                    <th scope="col" style="color: greenyellow">NOME</th>
                    <th scope="col" style="color: greenyellow">SENHA MD5</th>
                  </tr>
                </thead>
        <c:forEach var="adm" items="${dao.lista}">
                <tbody>
                    <tr >
                     <td>${adm.id}</td>
                     <td>${adm.nome}</td>
                     <td>${adm.senha}</td>
                   </tr>
                </tbody>  
        </c:forEach>
            </table>
    </c:when>
    <c:otherwise>
        <div class="alert alert-danger" role="alert">
        Ocorreu um erro durante a listagem! 
        </div>
    </c:otherwise>
    
</c:choose>
   
<jsp:include page="WEB-INF/footer-admin.jsp"/>