# Diretrizes do Projeto - Game Jam (Multi-Máquina & Multi-IA)

Este arquivo define os padrões, a arquitetura e as regras de cooperação para desenvolvedores e Assistentes de IA que trabalharem neste projeto simultaneamente em diferentes máquinas.

---

## 🎯 Visão Geral do Projeto
- **Objetivo**: Desenvolvimento ágil de jogo para **Game Jam**.
- **Engine**: **Godot 4** (GDScript)
- **Modo de Trabalho**: Simultâneo em múltiplas máquinas / instâncias de IA.

---

## 🚀 Regras Fundamentais para IAs e Desenvolvedores

### 1. Leitura e Atualização Obrigatória do Estado (`PROJECT_STATE.md`)
- **Antes de iniciar qualquer tarefa**: Leia o arquivo `PROJECT_STATE.md` para identificar tarefas em andamento, concluídas e pendentes.
- **Antes de finalizar o seu turno**: Atualize o `PROJECT_STATE.md` registrando o que foi feito, arquivos criados/modificados e os próximos passos.

### 2. Prevenção de Conflitos de Merge no Git (Godot 4)
No desenvolvimento simultâneo em Godot:
- **Cenas Pequenas e Modulares**: Crie cada entidade/sistema em sua própria cena (`.tscn`) separada. **EVITE** modificar a cena principal (`main.tscn` / `level.tscn`) ao mesmo tempo que outra máquina.
- **Scripts Desacoplados**: Deixe a lógica nos scripts (`.gd`) separados das cenas sempre que possível.
- **Recursos Próprios**: Salve recursos e sub-recursos (`.tres`) individualmente quando forem reutilizáveis.
- **Estrutura por Feature/Módulo**:
  ```text
  res://
  ├── assets/          # Sprites, áudios, fontes
  ├── scenes/
  │   ├── player/      # Cena e scripts do Player
  │   ├── enemies/     # Cenas e scripts de Inimigos
  │   ├── ui/          # Interface de Usuário
  │   └── levels/      # Fases do jogo
  ├── scripts/
  │   └── autoload/    # Singletons (Signals, GameState, SoundManager)
  ├── PROJECT_STATE.md # Estado atual das tarefas
  └── GEMINI.md        # Instruções para IAs
  ```

---

## 🛠️ Padrões de Código GDScript (Godot 4)

1. **Tipagem Estática**: Sempre use tipagem estática para evitar bugs rápidos de runtime.
   ```gdscript
   var speed: float = 200.0
   func take_damage(amount: int) -> void:
   ```
2. **Nomenclatura**:
   - Arquivos e Nós: `snake_case` para arquivos (`player_controller.gd`), `PascalCase` para nomes de Nós na cena (`PlayerController`).
   - Constantes: `UPPER_SNAKE_CASE` (`MAX_HEALTH`).
   - Sinais: No passado, ex: `signal health_changed(new_health: int)`, `signal player_died`.
3. **Comunicação entre Nós**:
   - **Sinais para cima, chamadas para baixo**: Nós pai chamam métodos dos filhos. Nós filhos emitem sinais que os pais escutam.
   - Use Singletons (`Autoload`) para eventos globais de áudio, pontuação e transição de telas.

---

## 🔄 Fluxo de Trabalho Git para Múltiplas Máquinas

1. **Faça `git pull` antes de começar**.
2. **Crie/Use branches por funcionalidade** (ex: `feature/player-movement`, `feature/enemy-ai`).
3. **Commit frequentemente** com mensagens claras (ex: `feat(player): adiciona pulo duplo`).
4. **Resolução de Conflitos**: Se houver conflito em arquivo `.tscn`, inspecione manualmente para não perder nós criados em outras máquinas.

---

## 📌 Checklist do Agente de IA ao Assumir uma Tarefa
1. [ ] Consultar `PROJECT_STATE.md`.
2. [ ] Declarar no `PROJECT_STATE.md` qual funcionalidade está desenvolvendo.
3. [ ] Implementar com código limpo, tipado e modular em Godot 4.
4. [ ] Testar/Validar alterações.
5. [ ] Atualizar `PROJECT_STATE.md` com status e arquivos alterados.
