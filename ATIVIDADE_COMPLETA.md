# 🚀 Atividade de Testes de Software - PRONTA!

## ✅ O que foi entregue:

### 📋 1. Arquivo de Testes Automatizados
- `test_login.robot` - Contém todos os 6 casos de teste solicitados

### 📊 2. Tabela de Casos de Teste
- `casos_de_teste.csv` - Tabela com ID, Classe/Valor Limite, Entrada, Resultado Esperado

### 📝 3. Relato da Atividade
- `relato_atividade.md` - Relato sobre a ferramenta, facilidades e dificuldades

### 📁 4. Evidências da Execução
- `results/report.html` - Relatório detalhado dos testes executados
- `results/log.html` - Log detalhado da execução
- `results/output.xml` - Dados em XML

### 📖 5. Documentação
- `README.md` - Explicação completa sobre Robot Framework e como usar

## 🎯 Casos de Teste Implementados:

✅ **TC001** - Login válido (student/Password123)  
✅ **TC002** - Usuário inexistente (classe inválida)  
✅ **TC003** - Senha incorreta (classe inválida)  
✅ **TC004** - Usuário com 1 caractere (valor limite)  
✅ **TC005** - Usuário vazio (valor limite)  
✅ **TC006** - Senha vazia (valor limite)  

## 🏃‍♂️ Como executar novamente:

### Opção 1 - Script automático:
```
executar_testes.bat
```

### Opção 2 - Comando manual:
```powershell
& ".\.venv\Scripts\robot.exe" --outputdir results test_login.robot
```

## 📊 Como ver os resultados:
1. Abra o arquivo `results/report.html` no navegador
2. O relatório mostra todos os testes, status e detalhes

## 🎓 Resumo do Robot Framework:
- **Sintaxe simples**: Palavras em inglês simples
- **Baseado em Python**: Mas não precisa saber Python
- **Relatórios automáticos**: HTML lindos e profissionais  
- **Muito usado na indústria**: Ferramenta profissional

---
**✨ Sua atividade está 100% completa e pronta para entrega!**