# 🤖 Automação de Testes com Robot Framework

Projeto da disciplina **Testes de Software** - Automação de testes funcionais para página de login usando Robot Framework.

## 📋 Sobre o Projeto

Este projeto implementa testes automatizados para validar diferentes cenários de login em uma aplicação web, seguindo técnicas de **particionamento de equivalência** e **análise de valores limite**.

### 🎯 Site Testado
- **URL**: https://practicetestautomation.com/practice-test-login/
- **Credenciais válidas**: student / Password123

## 🚀 Tecnologias Utilizadas

- **Robot Framework** - Framework de automação de testes
- **SeleniumLibrary** - Biblioteca para automação web
- **Python 3.13** - Linguagem base
- **Chrome WebDriver** - Driver para automação do navegador

## 📁 Estrutura do Projeto

```
├── test_login.robot          # 🤖 Arquivo principal com os testes automatizados
├── casos_de_teste.csv        # 📊 Tabela com casos de teste documentados
├── relato_atividade.md       # 📝 Relato da experiência com a ferramenta
├── executar_testes.bat       # ⚡ Script para executar testes no Windows
├── requirements.txt          # 📦 Dependências do projeto
├── .gitignore               # 🚫 Arquivos ignorados pelo Git
└── results/                 # 📈 Relatórios gerados após execução
    ├── report.html          # 📊 Relatório principal dos testes
    ├── log.html             # 📋 Log detalhado da execução
    └── output.xml           # 📄 Dados em formato XML
```

## 🛠️ Como Configurar o Ambiente

### 1. Clone o repositório
```bash
git clone https://github.com/Acciolyy/introducao-automacao-de-testes.git
cd introducao-automacao-de-testes
```

### 2. Crie um ambiente virtual Python
```bash
python -m venv .venv
```

### 3. Ative o ambiente virtual
```bash
# Windows
.venv\Scripts\activate

# Linux/Mac
source .venv/bin/activate
```

### 4. Instale as dependências
```bash
pip install -r requirements.txt
```

## ▶️ Como Executar os Testes

### 🎯 Executar todos os testes
```bash
robot --outputdir results test_login.robot
```

### 🔍 Executar teste específico
```bash
robot -t "TC001*" test_login.robot
```

### 🏷️ Executar por categoria
```bash
robot -i classe_valida test_login.robot
robot -i valor_limite test_login.robot
```

### ⚡ Modo fácil (Windows)
```bash
executar_testes.bat
```

## 📊 Casos de Teste Implementados

| ID | Tipo | Cenário | Entrada | Resultado Esperado |
|---|---|---|---|---|
| **TC001** | ✅ Classe Válida | Login com credenciais válidas | `student` / `Password123` | Login realizado com sucesso |
| **TC002** | ❌ Classe Inválida | Usuário inexistente | `usuario_inexistente` / `Password123` | "Your username is invalid!" |
| **TC003** | ❌ Classe Inválida | Senha incorreta | `student` / `senha_incorreta` | "Your password is invalid!" |
| **TC004** | ⚠️ Valor Limite | Usuário com 1 caractere | `a` / `Password123` | "Your username is invalid!" |
| **TC005** | ⚠️ Valor Limite | Usuário vazio | `(vazio)` / `Password123` | "Your username is invalid!" |
| **TC006** | ⚠️ Valor Limite | Senha vazia | `student` / `(vazio)` | "Your password is invalid!" |
| **TC007** | ⚠️ Valor Limite | Ambos campos vazios | `(vazio)` / `(vazio)` | "Your username is invalid!" |
| **TC008** | 🔍 Verificação | Elementos da página | Verificação de elementos | Campos e botões presentes |

## 📈 Visualizando os Resultados

Após executar os testes, abra o arquivo `results/report.html` no navegador para ver:

- ✅ **Status de cada teste** (Passou/Falhou)
- 📊 **Estatísticas gerais** 
- 🕒 **Tempo de execução**
- 📸 **Screenshots** (em caso de falha)
- 📋 **Logs detalhados**

## 🎓 Sobre o Robot Framework

O **Robot Framework** é uma ferramenta de automação que utiliza sintaxe próxima à linguagem natural:

```robot
*** Test Cases ***
Fazer Login Válido
    Open Browser    https://site.com    chrome
    Input Text      id:username         student  
    Input Text      id:password         Password123
    Click Button    id:submit
    Page Should Contain    Logged In Successfully
```


## 👥 Autor

**Thiago Viriato Accioly** - Disciplina de Testes de Software - UnB

---

⭐ **Projeto de Automação de Testes - Disciplina Testes de Software** ⭐