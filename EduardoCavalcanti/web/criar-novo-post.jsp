
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="WEB-INF/header-admin.jsp" />
<main class="mx-auto" style="width: 70%; margin-top:  5%">
    <c:choose >
            <c:when test="${teste2 eq 1}">
               <div class="alert alert-success" role="alert">
                   post criado com sucesso!
               </div>
                <c:remove var="teste2" scope="session"/>
            </c:when>
            <c:when test="${teste2 eq 2}">
               <div class="alert alert-danger" role="alert">
                  Ocorreu um erro.
               </div>
               <c:remove var="teste2" scope="session"/>
            </c:when>
            <c:when test="${teste2 eq 3}">
               <div class="alert alert-warning" role="alert">
                  Preencha todos os campos!
               </div>
               <c:remove var="teste2" scope="session"/>
            </c:when>
            <c:when test="${teste2 eq 4}">
               <div class="alert alert-danger" role="alert">
                  Erro ao carregar imagem!
               </div>
               <c:remove var="teste2" scope="session"/>
            </c:when>

        </c:choose>
        <h3 class="text-light">Novo Post</h3>
        <form enctype="multipart/form-data" class="bg-dark text-light" method="POST" action="novoPost">
            <div style=" width: 98%; padding: 1%" class="mx-auto">
            <div class="form-group">
                <label>Titulo: </label>
                <input class="form-control" type="text" name="titulo"/>
             </div>
           
            <div class="form-group">
                <label>Conteudo: </label>
                <textarea class="form-control" name="conteudo" rows="5"></textarea>
            </div>
            <div class="form-group">
                <label>Imagem</label>
                <input type="file" class="form-control-file" name="imagem">
            </div>
                <br>
                <button type="submit" class="btn btn-light">Criar</button>
            
        </form>
</main>
         
<jsp:include page="WEB-INF/footer-admin.jsp"/>