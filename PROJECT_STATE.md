# 📊 Estado Atual do Projeto (PROJECT_STATE.md)

Este arquivo é a fonte central de verdade para sincronizar o progresso entre desenvolvedores e IAs trabalhando simultaneamente em diferentes máquinas.

---

## 🎮 Informações da Game Jam
- **Nome do Jogo**: Astral Petals (Arena Action & Tactical Turn-Based Boss Deckbuilder)
- **Tema da Jam**: Ação 2D, Esquiva (Graze), Combate em Turnos e Cartas
- **Engine**: Godot 4.x (GDScript)
- **Resolução Nativa Oficial**: **320x180 pixels** (Pixel-Perfect, Nearest Neighbor, Janela 1280x720)
- **Direção de Arte**: Pixel Art Pastel com contornos em Roxo-Ardósia Profundo (`#2E2538`)

---

## 🛠️ Arquitetura e Módulos Principais
| Módulo | Descrição | Responsável / Máquina | Status |
| :--- | :--- | :--- | :--- |
| `TurnManager` | Máquina de estados (Movimento, Ação do Jogador, Turno do Chefe, Resolução) | Concluído | 🟢 Concluído |
| `BossController` | IA autônoma: Reposicionamento, Disparo em Leque e Salto AoE destruidor de paredes | Concluído | 🟢 Concluído |
| `Tactical Cards (6 Cartas)` | Gelo, Fogo DoT (20s), Lâmina, Cura, Parede de Pedra e Aumento de Velocidade (10T) | Concluído | 🟢 Concluído |
| `ArenaManager & StoneWall` | Limites da sala, grid tático e Parede de Pedra reativa/absorvedora | Concluído | 🟢 Concluído |
| `StatusEffectManager` | Gerenciamento de Gelo (Slow), Fogo (DoT de 20s) e Velocidade dobrada por 10 turnos | Concluído | 🟢 Concluído |
| `TurnBattleHUD` | HUD de turnos: banner de fase, indicador de PA, status badges e as 6 cartas na mão | Concluído | 🟢 Concluído |
| `TurnBossArena` | Cena principal jogável de combate em turnos contra o chefe (`turn_boss_arena.tscn`) | Concluído | 🟢 Concluído |
| `Design Visual & Art Manifest` | Especificação de arte, paleta e lista de assets ([`ASSET_MANIFEST.md`](file:///c:/Users/26012195/Documents/Game%20Jeam%2028-09-2026/ASSET_MANIFEST.md)) | Lead Game Artist | 🟢 Concluído |

---

## 📋 Lista de Tarefas (Backlog)

### 🔴 Pendentes (A Fazer)
- [ ] Importar sprites finais dos chefes e cartas a partir do `ASSET_MANIFEST.md`.
- [ ] Implementar efeitos sonoros específicos para cada uma das 6 cartas e impacto de salto do chefe.
- [ ] Adicionar mais variações de chefes (Chefe 2 e Chefe 3) com mecânicas próprias de grade astral e estalactites.

### 🟡 Em Andamento (In Progress)
*(Nenhuma tarefa em andamento no momento)*

### 🟢 Concluídas (Done)
- [x] Diretrizes de desenvolvimento multi-máquina (`GEMINI.md`).
- [x] Estrutura completa e modular de pastas e `.gitignore` / `.gdignore`.
- [x] Especificação de Design Visual completa e `ASSET_MANIFEST.md`.
- [x] Paleta de cores oficial pastel e tokens no `Palette.gd`.
- [x] Implementação da Máquina de Estados do `TurnManager` (Fase 1: Movimento -> Fase 2: Ação Jogador -> Fase 3: Chefe -> Fase 4: Resolução).
- [x] Implementação do `BossController` com IA tática (Disparo de Projéteis vs Salto AoE destruidor de paredes).
- [x] Implementação do `StatusEffectManager` com Fogo (DoT contínuo de 20s), Gelo (reduz movimento/projéteis) e Velocidade (+100% alcance por 10 turnos).
- [x] Implementação do `ArenaManager` e da `StoneWall` (bloco sólido que intercepta projéteis e é destruído pelo salto do chefe).
- [x] Implementação do catálogo oficial das 6 Cartas Táticas em `TacticalCard.gd` e `TacticalCardDatabase.gd`.
- [x] Implementação da interface `TurnBattleHUD` exibindo fases, pontos de ação (PA), badges e as 6 cartas.
- [x] Cena jogável `turn_boss_arena.tscn` configurada e validada no Godot 4 (exit code 0).

---

## 📝 Histórico de Logs & Alterações Recentes
- **2026-09-29 (Turn-Based Boss Arena & 6 Cards)**:
  - Implementação completa do sistema de combate em turnos e IA do chefe conforme especificação.
  - Implementado o ciclo estrito de 4 fases por rodada.
  - Criadas e validadas as 6 cartas táticas com placeholders funcionais.
  - Configurada como cena principal jogável do projeto.
- **2026-09-28**: Setup inicial do projeto e controle de tarefas.

---

> 💡 **Nota para a IA**: Toda vez que concluir ou iniciar uma tarefa, edite este arquivo atualizando a tabela de módulos, as listas de tarefas e o log de alterações.
