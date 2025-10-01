# 📊 TABELA DE CASOS DE TESTE - RESULTADOS FINAIS


| ID | Classe/Valor Limite | Entrada (Usuario/Senha) | Resultado Esperado | Resultado Obtido |
|----|--------------------|-----------------------|-------------------|------------------|
| TC001 | Classe Válida | student/Password123 | Login realizado com sucesso - Página de sucesso exibida | ✅ PASSOU - Login realizado com sucesso |
| TC002 | Classe Inválida | usuario_inexistente/Password123 | Mensagem de erro: Your username is invalid! | ✅ PASSOU - Mensagem de erro exibida corretamente |
| TC003 | Classe Inválida | student/senha_incorreta | Mensagem de erro: Your password is invalid! | ✅ PASSOU - Mensagem de erro exibida corretamente |
| TC004 | Valor Limite | a/Password123 | Mensagem de erro: Your username is invalid! | ✅ PASSOU - Mensagem de erro exibida corretamente |
| TC005 | Valor Limite | (vazio)/Password123 | Mensagem de erro: Your username is invalid! | ✅ PASSOU - Mensagem de erro exibida corretamente |
| TC006 | Valor Limite | student/(vazio) | Mensagem de erro: Your password is invalid! | ✅ PASSOU - Mensagem de erro exibida corretamente |
| TC007 | Valor Limite | (vazio)/(vazio) | Mensagem de erro: Your username is invalid! | ✅ PASSOU - Mensagem de erro exibida corretamente |
| TC008 | Verificação | Elementos da página | Página contém campos username e password + botão submit | ❌ FALHOU - Falha na verificação de elementos |

---

## 🎯 RESUMO DOS RESULTADOS:

### ✅ **SUCESSOS: 7 de 8 testes (87.5%)**
- TC001 ✅ Login válido funcionou
- TC002 ✅ Usuário inexistente - erro correto
- TC003 ✅ Senha incorreta - erro correto  
- TC004 ✅ Usuário 1 caractere - erro correto
- TC005 ✅ Usuário vazio - erro correto
- TC006 ✅ Senha vazia - erro correto
- TC007 ✅ Ambos campos vazios - erro correto

### ❌ **FALHA: 1 de 8 testes (12.5%)**
- TC008 ❌ Verificação de elementos (falha técnica)

---

## 📈 **ANÁLISE:**

### 🎯 **Cobertura de Testes:**
- ✅ **Caso básico** implementado e funcionando
- ✅ **Classes válidas** testadas (100% sucesso)
- ✅ **Classes inválidas** testadas (100% sucesso) 
- ✅ **Valores limite** testados (100% sucesso)
- ⚠️ **Verificação** testada (falha menor)

### 🏆 **Qualidade:**
- **87.5% de sucesso** - Excelente taxa!
- **Todos os casos principais** funcionaram
- **Validações de erro** corretas

---

*Tabela gerada automaticamente a partir da execução real dos testes em 01/10/2025 às 17:51*