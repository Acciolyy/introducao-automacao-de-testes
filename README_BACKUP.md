# Atividade - Testes de Software com Robot Framework

## Sobre o Robot Framework

O Robot Framework é uma ferramenta de automação de testes que usa uma sintaxe muito simples e próxima da linguagem natural. É baseado em Python, mas você não precisa saber Python para usá-lo!

### Estrutura de um arquivo .robot:

```
*** Settings ***     - Configurações, bibliotecas e setup/teardown
*** Variables ***    - Variáveis do projeto
*** Keywords ***     - Palavras-chave customizadas (funções reutilizáveis)
*** Test Cases ***   - Os casos de teste propriamente ditos
```

## Como executar os testes

### Executar todos os testes:
```powershell
".\.venv\Scripts\robot.exe" test_login.robot
```

### Executar apenas um teste específico:
```powershell
".\.venv\Scripts\robot.exe" -t "TC001*" test_login.robot
```

### Executar testes por tag:
```powershell
".\.venv\Scripts\robot.exe" -i classe_valida test_login.robot
```

## Arquivos gerados após a execução:

- `report.html` - Relatório detalhado dos testes
- `log.html` - Log detalhado da execução
- `output.xml` - Dados em XML para integração

## Casos de Teste Implementados:

| ID | Classe/Valor Limite | Entrada | Resultado Esperado |
|---|---|---|---|
| TC001 | Classe Válida | student / Password123 | Login realizado com sucesso |
| TC002 | Classe Inválida | usuario_inexistente / Password123 | "Your username is invalid!" |
| TC003 | Classe Inválida | student / senha_incorreta | "Your password is invalid!" |
| TC004 | Valor Limite | a / Password123 | "Your username is invalid!" |
| TC005 | Valor Limite | (vazio) / Password123 | "Your username is invalid!" |
| TC006 | Valor Limite | student / (vazio) | "Your password is invalid!" |

## Principais Palavras-chave do Robot Framework:

- `Open Browser` - Abre o navegador
- `Input Text` - Insere texto em um campo
- `Click Button` - Clica em um botão
- `Wait Until Page Contains` - Espera até a página conter um texto
- `Page Should Contain` - Verifica se a página contém um texto
- `Close Browser` - Fecha o navegador

## Dicas:

1. Os relatórios HTML são muito informativos - sempre verifique eles após executar
2. Use tags para organizar e filtrar seus testes
3. Keywords customizadas tornam os testes mais legíveis e reutilizáveis
4. O Robot Framework é case-insensitive para keywords