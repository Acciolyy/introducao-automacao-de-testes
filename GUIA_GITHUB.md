# 📚 Guia Completo: Como Subir seu Projeto no GitHub

## 🎯 Passo a Passo para GitHub

### 1️⃣ **Preparar o Git (se ainda não tiver)**

```bash
# Instalar Git (se não tiver): https://git-scm.com/download/win

# Configurar seu nome e email (primeira vez apenas)
git config --global user.name "Seu Nome"
git config --global user.email "seu.email@exemplo.com"
```

### 2️⃣ **Criar Repositório no GitHub**

1. Acesse [github.com](https://github.com)
2. Clique em **"New"** (botão verde)
3. Nome sugerido: `robot-framework-login-tests`
4. Descrição: `Automação de testes de login com Robot Framework`
5. ✅ Marque **"Public"** 
6. ❌ **NÃO** marque "Add a README file" (já temos um)
7. Clique **"Create repository"**

### 3️⃣ **Comandos para Subir o Projeto**

Execute estes comandos **na pasta do seu projeto**:

```bash
# 1. Inicializar repositório Git
git init

# 2. Adicionar todos os arquivos
git add .

# 3. Fazer o primeiro commit
git commit -m "🚀 Projeto inicial: Automação de testes com Robot Framework"

# 4. Renomear branch para main (padrão atual)
git branch -M main

# 5. Conectar com o GitHub (SUBSTITUA SEU_USUARIO pelo seu username do GitHub)
git remote add origin https://github.com/SEU_USUARIO/robot-framework-login-tests.git

# 6. Enviar para o GitHub
git push -u origin main
```

### 4️⃣ **Arquivos que serão enviados**

✅ **Enviados para o GitHub:**
- `test_login.robot` - Testes automatizados
- `casos_de_teste.csv` - Tabela de casos de teste  
- `relato_atividade.md` - Seu relato
- `requirements.txt` - Dependências
- `executar_testes.bat` - Script de execução
- `README_GITHUB.md` - README principal
- `LICENSE` - Licença
- `.gitignore` - Arquivos ignorados

❌ **NÃO enviados (pelo .gitignore):**
- `.venv/` - Ambiente virtual (muito pesado)
- `results/` - Relatórios (são gerados localmente)

### 5️⃣ **Renomear README para ficar bonito**

Depois de subir, execute:

```bash
# Renomear o README principal
git mv README_GITHUB.md README.md
git commit -m "📝 Atualizar README principal"
git push
```

### 6️⃣ **Comandos Úteis do Git**

```bash
# Ver status dos arquivos
git status

# Ver histórico de commits
git log --oneline

# Adicionar mudanças futuras
git add .
git commit -m "Descrição da mudança"
git push

# Ver diferenças antes de commitar
git diff
```

## 🌟 **Dicas Pro**

### 📝 **Commits Profissionais:**
```bash
git commit -m "✨ Adicionar novos casos de teste"
git commit -m "🐛 Corrigir timeout nos testes"
git commit -m "📝 Atualizar documentação"
git commit -m "🚀 Deploy inicial do projeto"
```

### 🏷️ **Emojis para Commits:**
- 🚀 `:rocket:` - Deploy/Release
- ✨ `:sparkles:` - Nova feature
- 🐛 `:bug:` - Bug fix
- 📝 `:memo:` - Documentação
- ♻️ `:recycle:` - Refatoração
- 🧪 `:test_tube:` - Testes

### 📊 **Seu README ficará assim no GitHub:**

![GitHub Preview](preview.png)
- ✅ Badges bonitos
- 📊 Tabela de casos de teste
- 🚀 Instruções de instalação
- 📈 Como executar
- 🎨 Emojis e formatação

## 🎯 **Link Final**

Após subir, seu projeto estará em:
```
https://github.com/SEU_USUARIO/robot-framework-login-tests
```

## 🆘 **Se der erro:**

### ❌ "Repository not found"
- Verifique se criou o repositório no GitHub
- Confirme se o nome está correto no comando

### ❌ "Permission denied"
- Configure suas credenciais do Git
- Pode precisar de token de acesso pessoal

### ❌ "Nothing to commit"
- Execute `git status` para ver se tem arquivos
- Verifique se está na pasta correta

---

## 🎉 **Resultado Final**

Você terá um repositório GitHub profissional com:
- ⭐ README atrativo com emojis
- 📊 Documentação completa
- 🤖 Código de testes bem estruturado
- 📈 Pronto para portfólio acadêmico/profissional

**Boa sorte! 🚀**