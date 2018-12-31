<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="WEB-INF/header.jsp"/>
<main class="container-fluid justify-content-center" style="margin-bottom: 5%">

        <div class=" bg-dark text-white rounded " style="margin: 1% 10%;">
        <h1 class="text-center shadow-sm p-3 mb-5" > Contato</h1>
      </div>
    
    
        <c:choose >
            <c:when test="${teste eq 3}">
                <div style="margin: 1% 5%;" class="alert alert-warning" role="alert">
                    Preencha os campos correntamente!
                </div>
            </c:when>
            <c:when test="${teste eq 1}">
                <div style="margin: 1% 5%;" class="alert alert-success" role="alert">
                    E-mail enviado com sucesso!
                </div>
            </c:when>
            <c:when test="${teste eq 2}">
                <div style="margin: 1% 5%;"  class="alert alert-danger" role="alert">
                  Ocorreu um erro ao enviar o e-mail
                </div>
            </c:when>

        </c:choose>
         
        <div class="card" style="margin: 1% 5%;">

      <h5 class="card-header" >Envie um e-mail</h5>
      <div class="card-body" >
          <form action="SendMail" method="POST">
              
              <p class="card-text">Seu e-mail:</p>
              <input type="email" class="form-control" name="email" placeholder="name@mail.com"></br>
              <p class="card-text">Assunto:</p>
              <input type="text" class="form-control" name="assunto" placeholder="Assunto"></br>
              <p class="card-text">Menssagem:</p>
              <textarea class="form-control" name="menssagem" rows="5"></textarea></br>
              <button type="submit" class="btn btn-dark mb-2">Enviar</button>
          </form>
      </div>
    </div>
    </main>
<jsp:include page="WEB-INF/footer.jsp"/>