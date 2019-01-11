
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="WEB-INF/header-admin.jsp" />
<main class="mx-auto" style="width: 70%; margin-top:  5%">
    <c:choose >
            <c:when test="${teste2 eq 1}">
               <div class="alert alert-success" role="alert">
                   admin cadastrado com sucesso!
               </div>
                <c:remove var="teste2" scope="session"/>
            </c:when>
            <c:when test="${teste2 eq 2}">
               <div class="alert alert-danger" role="alert">
                  Ocorreu um erro.
               </div>
               <c:remove var="teste2" scope="session"/>
            </c:when>

        </c:choose>
        <h3 class="text-light">Novo Administrador</h3>
        <form class="bg-dark text-light" method="POST" action="novoAdm">
            <div style=" width: 98%; padding: 1%" class="mx-auto">
            <div class="form-group">
                <label for="nome">Nome: </label>
                <input class="form-control" type="text" name="nome"/>
             </div>
            <div class="form-group">
                <label for="senha">Senha: </label>
                <input class="form-control" type="password" name="senha"><br>
            </div>
            <button type="submit" class="btn btn-light">Inserir</button>
            <div>
        </form>
</main>
         
<jsp:include page="WEB-INF/footer-admin.jsp"/>