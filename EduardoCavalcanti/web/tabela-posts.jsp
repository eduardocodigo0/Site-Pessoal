
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="WEB-INF/header-admin.jsp" />
    <jsp:useBean id="dao" class="DAO.PostDAO"/>
    ${dao.setPosts()}

    <table style="width: 70%; margin-top: 5%; background-color: rgba(0,0,0,0);" class="mx-auto table table-striped table-dark table-borderless">
        <thead >
            <tr><td><h3 class="mx-auto text-light text-monospac">POSTS</h3></td></tr>
            <tr ><td ><a class="text-center" href="criar-novo-post.jsp"> <button type="button" class=" btn btn-dark">Novo</button></a></td></tr>              
        </thead>
    </table>
    
    <c:choose>
        
        <c:when  test="${not empty dao.posts}">  
                <table style="width: 70%; " class="mx-auto table table-striped table-dark ">

                    <thead >

                      <tr >
                        <th scope="col" style="color: greenyellow">ID</th>
                        <th scope="col" style="color: greenyellow">TITULO</th>
                        <th scope="col" style="color: greenyellow">DATA</th>       
                        <th scope="col" style="color: greenyellow">EDITAR</th>  
                      </tr>
                    </thead>
            <c:forEach var="post" items="${dao.posts}">
                    <tbody>
                        <tr >
                         <td>${post.id}</td>
                         <td>${post.titulo}</td>
                         <td>${post.data}</td>
                         <td><a href="#"><button type="button" class="btn btn-light mx-auto">Editar</button></a></td>
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