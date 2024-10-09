<?php
$host = "localhost"; 
$user = "root"; 
$password = ""; 
$database = "DBNKN"; 

$conn = new mysqli($host, $user, $password, $database);

// Verifica se houve erro na conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
} // Removido echo de conexão bem-sucedida para produção
?>
