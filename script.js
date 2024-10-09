console.log('JavaScript carregado corretamente!');

function aplicarMascaraTelefone() {
    const telefoneInput = document.getElementById('numero');

    telefoneInput.addEventListener('input', function (e) {
        let numero = e.target.value.replace(/\D/g, '');

        if (numero.length > 10) {
            e.target.value = numero.replace(/^(\d{2})(\d{5})(\d{4})$/, '($1) $2-$3');
        } else if (numero.length > 6) {
            e.target.value = numero.replace(/^(\d{2})(\d{4})(\d{0,4})$/, '($1) $2-$3');
        } else if (numero.length > 2) {
            e.target.value = numero.replace(/^(\d{2})(\d{0,5})$/, '($1) $2');
        } else {
            e.target.value = numero.replace(/^(\d*)$/, '($1');
        }
    });
}

function validarFormulario() {
    const nome = document.getElementById('nome').value;
    const nascimento = document.getElementById('nascimento').value;
    const email = document.getElementById('email').value;
    const senha = document.getElementById('senha').value;
    const numero = document.getElementById('numero').value;

    if (nome.trim() === "") {
        alert("Por favor, preencha o campo Nome.");
        return false;
    }

    if (nascimento.trim() === "") {
        alert("Por favor, preencha o campo Data de Nascimento.");
        return false;
    }

    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        alert("Por favor, insira um e-mail válido.");
        return false;
    }

    if (senha.length < 6) {
        alert("A senha deve ter no mínimo 6 caracteres.");
        return false;
    }

    if (numero.trim() === "" || numero.length < 14) {
        alert("Por favor, insira um número de telefone válido.");
        return false;
    }

    return true;
}

document.addEventListener('DOMContentLoaded', aplicarMascaraTelefone);
