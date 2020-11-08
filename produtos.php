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
  

  
    ?>


<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <script src="js/funcao.js"></script>
        <meta charset="utf-8"/>
        <title> Página Inicial</title>
        <link href="css/estilo.css" rel="stylesheet">
        
        

    </head>
    <body>

    <?php
        include('menu.html');
    ?>
  <div class ="container-fluid">  
    <p class ="titulos"> Nossos Produtos</p>
    <hr>

    <div id="categoria">
    Categorias
        <ol>
            <li onclick="exibir_todos()"> Todos(16)</li>
            <li onclick="exibir_categoria('geladeira')"> Geladeira (4)</li>
            <li onclick="exibir_categoria('lavaseca')">Lava e Seca(5)</li>
            <li onclick="exibir_categoria('fogoes')">Fogão (4)</li>
            <li onclick="exibir_categoria('forno')">Forno de Embutir(3)</li>

        </ol>
    </div>

    

    <?php
          $sql ="select * from produto";
          $result = $conn -> query($sql);
      
          if ($result-> num_rows > 0){
             while($rows = $result-> fetch_assoc()){
                
    ?>

    
  
   
  

        <div class= "box_produtos" id=<?php echo $rows["categoria"]; ?> style="display: inline-block;">
    <img src =<?php echo $rows["imagem"]; ?>  width="150px" onclick="destaque1 (this)">
    <p> <?php echo $rows["descricao"]; ?> 
    <hr>
    De:<strike> R$  <?php echo $rows["preco"]; ?> </strike> por:
    <p class="valor">R$ <?php echo $rows["preco_venda"]; ?> </p>
  

       
    </div> 
            

   <?php 
      
              }
      
          }else{
              echo"Nenhum prduto cadastrado!";
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