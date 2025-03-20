ANALISADOR LEXICO COM FLEX

DESCRIÇÃO 

Este projeto implementa um analisador léxico simples utilizando Flex para reconhecer padrões básicos em um código-fonte, incluindo:
 Palavras-chave: if, else, while
 Identificadores (nomes de variáveis)
 Números inteiros
 Operadores aritméticos: `+`, `-`, `*`, `/`

REQUISITOS

1º Windows 10
2º Git Bash (recomendado) ou Prompt de Comando
3º Flex e GCC instalados

 INSTALAÇÃO E CONFIGURAÇÃO
 
 1º Instalar Git Bash
Baixar e instalar Git for Windows: [https://git-scm.com/download/win](https://git-scm.com/download/win)

2º Instalar Flex e GCC
Com PowerShell como Administrador, rodar:
  powershell
choco install winflexbison gcc


Se instalado manualmente, adicionar o caminho do Flex ao Path do Windows.

COMPILAÇÃO E EXECUÇÃO

1º Criar um arquivo "lexer.l" e copiar o código do analisador.
2º No terminal, gerar o arquivo "lex.yy.c":
    bash
   flex lexer.l
   
3º Compilar o analisador:
   bash
   gcc lex.yy.c -o lexer.exe -lfl
  
4º Executar e testar:
   bash
   ./lexer.exe
   
   Ou fornecer entrada direta:
   bash
   echo "if x + 10 else while" | ./lexer.exe
   

Saída Esperada

PALAVRA-CHAVE: if
IDENTIFICADOR: x
OPERADOR: +
NÚMERO: 10
PALAVRA-CHAVE: else
PALAVRA-CHAVE: while


