<?php
include('conexao.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST['nome'];
    $datanascimento = $_POST['nascimento'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];
    $whatsapp = $_POST['numero'];

    $sqlVerificaEmail = "SELECT * FROM Lead WHERE email = ?";
    $stmtVerificaEmail = $conn->prepare($sqlVerificaEmail);
    $stmtVerificaEmail->bind_param("s", $email);
    $stmtVerificaEmail->execute();
    $resultado = $stmtVerificaEmail->get_result();

    if ($resultado->num_rows > 0) {
        echo "<script>alert('Este e-mail já está cadastrado.'); window.history.back();</script>";
    } else {
        $sql = "INSERT INTO Lead (nome, datanascimento, email, senha, whatsapp, datalog) VALUES (?, ?, ?, ?, ?, NOW())";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sssss", $nome, $datanascimento, $email, $senha, $whatsapp);

        if ($stmt->execute()) {
            echo "<script>alert('Obrigado!'); window.location.href='https://www.nknbank.com.br/';</script>";
        } else {
            echo "Erro: " . $stmt->error;
        }

        $stmt->close();
    }

    $stmtVerificaEmail->close();
    $conn->close();
}
?>
