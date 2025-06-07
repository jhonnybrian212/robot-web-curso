## Projeto de testes da QAZANDO ##

- https://automationpratice.com.br/

## Rodando testes por nome de teste ##
robot --test "Cenário 3: Testando valor no teste" .\teste.robot

## Rodando testes por tags ##
robot --include "Cenario1" teste.robot

## Salvando logs de forma organizada (Precisa criar a pasta com o nome reports) ##
robot --outputdir report teste.robot

Obs: Cenário 2 está desenvolvido para dar erro.