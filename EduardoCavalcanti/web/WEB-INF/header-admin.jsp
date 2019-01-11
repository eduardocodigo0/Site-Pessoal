

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eduardo Cavalcanti</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <style type="text/css">
            body {background: black;}
            canvas {display: block;}
            
        </style>
    </head>
    <body>
        <canvas id="c" style="position: absolute; z-index: -1; width: 100%; height: 100%;"></canvas>
        <ul class="nav justify-content-center bg-dark font-weight-bolder" style="padding: 1%; width: 100%">
            <li class="nav-item">
              <a class="nav-link active text-monospac font-weight-bolder text-success" href="painel-admin.jsp">Painel</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active text-monospac font-weight-bolder text-success" href="tabela-posts.jsp">Posts</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active text-monospac font-weight-bolder text-success" href="administradores.jsp">Administradores</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active text-monospac font-weight-bolder text-success" href="index.jsp" >Voltar ao site</a>
            </li>
        </ul>
        