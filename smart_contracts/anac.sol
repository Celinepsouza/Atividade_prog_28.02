// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract ANAC {
    uint256 public id; // declarando variável idade

    address public dono; // declarando variável para armazenar o endereço do dono do contrato

    // Adicionando um modificador que garante que somente o dono do contrato pode executar a função
    modifier somenteDono() {
        require(msg.sender == dono, "Somente o dono do contrato pode executar");
        _;
    }

    // Adicionando um construtor para a criação do contrato
    constructor() {
        id = 18; // declarando a variável idade que por padrão é 18 de idade

        dono = msg.sender; // aqui definimos que o dono do contrato é o endereço que cria o contrato
    }

    // Função onde se define a idade
    function setIdade(uint256 novaIdade) public somenteDono {
        id = novaIdade;
    }

    // Função onde se obtem a idade
    function getIdade() public view returns (uint256) {
        return id;
    }
}
