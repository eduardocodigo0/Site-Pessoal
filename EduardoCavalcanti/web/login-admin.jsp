<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <style type="text/css">
            #p{
                position: fixed;
                width: 100%;
                height: 100%;
                z-index: -1;
            }
        </style>
    <title>Eduardo Cavalcanti</title>
    </head>
    <body  style="background-color: black">
        <div id="p"  ></div>
            <div class="card" style="margin: 10% 10%; position: absolute; min-width: 70%;">
            <h5 class="card-header" >Login - Área Administrativa</h5>
            <div class="card-body" >
                <form action="SendMail" method="POST">

                    <p class="card-text">Usuario:</p>
                    <input type="email" class="form-control" name="usuario" placeholder="Usuario"></br>
                    <p class="card-text">Senha:</p>
                    <input type="password" class="form-control" name="senha" placeholder="********"></br>
                    
                    
                    <button type="submit" class="btn btn-dark mb-2">Entrar</button>
                </form>
            </div>
            </div>
        
        <script src="static/js/particles.min.js"> </script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script>particlesJS.load('p', 'static/js/particles.json', function() {
                console.log('callback - particles.js config loaded');
            });</script>
        
    </body>
</html>
