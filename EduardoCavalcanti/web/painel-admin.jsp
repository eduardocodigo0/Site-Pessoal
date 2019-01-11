

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="WEB-INF/header-admin.jsp" />

<div class="card mx-auto text-center bg-dark text-success" style="width: 70%; padding: 1%; margin-top: 10%">
    <h2 class="card-title"> Painel Administrativo</h2><br><br>
  <ul class=" bg-dark list-group list-group-flush" style="font-size: 24px">
     <li class="list-group-item bg-dark "><a class="text-decoration-none text-light" href="tabela-posts.jsp">Posts</a></li>
    <li class="list-group-item bg-dark"><a class="text-decoration-none text-light" href="administradores.jsp">Administradores</a></li>
    <li class="list-group-item bg-dark"><a class="text-decoration-none text-light" href="index.jsp">Voltar ao site</a></li>
    <li class="list-group-item bg-dark"><a class="text-decoration-none text-light" href="">Sair</a></li>
  </ul><br>
</div>


<jsp:include page="WEB-INF/footer-admin.jsp" />