<?php
    $servername="localhost";
    $username="root";
    $password ="";
    $database="fseeletro";

    // Criando a conexão

    $conn = mysqli_connect($servername, $username, $password, $database);

    //Verificando a conexão
    if (!$conn){
        die("A conexão ao BD falhou:" . mysqli_connect_error());

    }

    if(isset($_POST['nome']) && isset($_POST ['msg'])){
        $nome = $_POST['nome'];
        $msg = $_POST ['msg'];

        
        

        $sql = "insert into comentarios (nome , msg) values ('$nome', ' $msg')";
        $result = $conn ->query ($sql);
    }
  

  
    ?>



<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title> Fale Conosco </title>
      <link href="css/estilo.css" rel="stylesheet"> 
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        

    </head>
    <body>

        <?php
        include('menu.html');
         ?>
   
        <br><br>
        <div class ="container">  
    <h1> Fale conosco </h1><hr>
    
    <div class ="lojas">
        <div class="contato">
        
            <img src="imagem/email.png" width ="40px">
           <p class="contato"> contato@fullstackeletro.com<br></div>
        </div>

        <div class ="lojas">
            <div class="contato">
            <img  src="imagem/wht.png" width ="40px">
             (11) 99999-9999</div>
        </div>
    </div>
    <br><br><br>
    <br><br><br>
    <br><br><br>
    
    <div class ="container-fluid">    
            <div class="row">
                <div class="col-6 mx-auto pt-4 container-faleconosco">
                    <span class="h3"> Fale Conosco </span><br>
                    <br>

                    <form method ="POST" action="">
                        <div class ="form-group">
                            <label for ="email"> Digite seu nome: </label>
                            <input class ="form-control" type ="email" name ="email" id="email">
                        </div>

                        <div class ="form-group">
                            <label for="areadetexto"> Digite sua mensagem aqui</label>
                            <textarea class="form-control" id="areadetexto" rows="3"></textarea>
                        
                       </div>
                        <button type ="submit" class ="btn btn-primary mb-4"> Enviar </button>



                    </form>


                </div>

            </div>

        </div>

    <?php
          $sql ="select * from comentarios";
          $result = $conn -> query($sql);
      
          if ($result-> num_rows > 0){
             while($rows = $result-> fetch_assoc()){
                echo "Data: " ,$rows['data'], "<br>";
                echo "Nome: " ,$rows['nome'], "<br>";
                echo "Mensagem: " ,$rows['msg'], "<br>";
                echo "<hr>";
               
                

            }
      
        }else{
            echo"Nenhum comentário ainda!";
        }


  ?>





    
    <br><br><br>
    <br><br><br>
    <br><br><br>
    <br><br><br>
    <br><br><br>
        
    <div class="footer">    
       Formas de pagamento
       <br>
       <img src="imagem/logop.jpg" width="380" height="100">
       <br>
       <p class="rodape">&copy; Recode 2020</p>

    </div>
   




    </body>
</html>