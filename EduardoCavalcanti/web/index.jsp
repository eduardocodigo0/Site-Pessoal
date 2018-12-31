<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="WEB-INF/header.jsp"/>
<main class="container-fluid justify-content-center" style="margin-bottom: 5%">
  <div class=" bg-dark text-white rounded " style="margin: 1% 10%;">
    <h1 class="text-center shadow-sm p-3 mb-5" > Serviços</h1>
  </div>

  <div class="d-flex justify-content-center row">

    <figure class="figure col-lg-6 col-sm-12">
      <h3 class="bg-info text-center text-white rounded" style="padding: 1%;">Desenvolvimento de sistemas web.</h3>
      <img src="static/img/internet.png" class="figure-img img-fluid rounded" alt="A generic square placeholder image with rounded corners in a figure.">
      <figcaption class="figure-caption text-center">Uso do framework python Django e do framework CSS Bootstrap para criação de websites dinâmicos e responsivos.</figcaption>
    </figure>

    <figure class="figure figure col-lg-6 col-sm-12">
      <h3 class="bg-info text-center text-white rounded" style="padding: 1%;">Desenvolvimento de sistemas desktop.</h3>
      <img src="static/img/desktop.png" class="figure-img img-fluid rounded" alt="A generic square placeholder image with rounded corners in a figure.">
      <figcaption class="figure-caption text-center">Uso da tecnologia Java para a criação de sistemas desktop de alto desempenho.</figcaption>
    </figure>

  </div>


</main>
<jsp:include page="WEB-INF/footer.jsp"/>