<?php
include('conexao.php');
?>

<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="script.js" defer></script> 
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Login</h1>
    
    <form action="processar.php" method="post" onsubmit="return validarFormulario()">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" placeholder="Digite o seu nome">
        <br>
        <br>

        <label for="nascimento">Data de nascimento:</label>
        <input type="date" id="nascimento" name="nascimento" placeholder="Digite sua data de nascimento">
        <br>
        <br>

        <label for="email">E-mail:</label>
        <input type="email" id="email" name="email" placeholder="Digite seu E-Mail">
        <br>
        <br>

        <label for="senha">Senha:</label>
        <input type="password" id="senha" name="senha" placeholder="Insira sua senha">
        <br>
        <br>

        <label for="numero">Telefone:</label>
        <input type="tel" id="numero" name="numero" placeholder="(XX) XXXXX-XXXX" maxlength="15">
        <br>
        <br>

        <input type="submit" value="Enviar">
    </form>        
    
   <a href="teste.html">teste</a>

</body>
</html>
