# 🎨 ESPECIFICAÇÃO DE DESIGN VISUAL & ASSET MANIFEST
**Projeto:** Astral Petals (Ação 2D, Esquiva & Deckbuilder Pastel)  
**Direção de Arte:** Lead Game Artist & 2D Art Director  
**Resolução Nativa:** 320x180 pixels (Pixel-Perfect, Nearest Neighbor)

---

## 1. 🌈 DIRETRIZES GERAIS DE ARTE & PALETA

### 1.1. Regra de Ouro dos Contornos (Outlines)
- **PROIBIDO** o uso de preto puro (`#000000`).
- Personagens, chefes e projéteis utilizam **Roxo-Ardósia Profundo** (`#2E2538`) ou **Azul-Noturno Dessaturado** (`#282A3A`).
- Elementos cenográficos e chão não usam contornos pesados; a distinção ocorre exclusivamente por contraste de valores de cor (*value contrast*).

### 1.2. Regra de Contraste de Perigo (Legibilidade Bullet Hell)
- **Cenário & Chão:** Baixa saturação e luminosidade média-alta (Lavanda, Menta, Mármore Rosa).
- **Projéteis Inimigos & Áreas de Risco:** Alta saturação relativa e tons quentes (Coral `#FF8B94`, Magenta `#FF75A0`, Amarelo Queimado `#FFD166`, Carmim `#FF6987`).

---

## 2. 🧙 DESIGN DO JOGADOR ("O TECELÃO DE ÉTER")

- **Conceito:** Tecelão místico com túnica leve e capa curta azul-bebê esvoaçante que responde à inércia do movimento. Na mão dominante, levita um prisma cristalino com as miniaturas das 4 cartas ativas orbitando suavemente.
- **Paleta de Cores:**
  - Túnica e Capa: Azul-Bebê Suave (`#A8D8EA`) e Pêssego Claro (`#FFD3B6`)
  - Cabelo e Brilhos: Branco-Creme (`#FFFFFC`)
  - Contorno: Roxo-Ardósia (`#2E2538`)
  - Hitbox Visual Central: Ponto cintilante de 4x4 pixels em Amarelo Luz (`#FFF3B0`)

---

## 3. 🏟️ DESIGN DAS ARENAS DE COMBATE

| Ambiente | Chão / Piso | Bordas da Arena | Iluminação & FX |
| :--- | :--- | :--- | :--- |
| **1. Jardim das Névoas de Menta** | Mosaico de grama menta (`#BFFCC6`) com pedras lavanda (`#E8DFF5`) | Cercas vivas baixas e flores de lótus flutuantes | Luz matinal, sombras violeta pálido (`#D8BBFF`), esporos flutuantes |
| **2. Santuário dos Cristais de Quartzo** | Ladrilhos de mármore rosa (`#FDE2E4`) com veios dourados (`#FFF1E6`) | Pilares de quartzo e prismas celestes flutuantes (`#D0F4DE`) | Reflexos cintilantes sutis no piso ao passar projéteis |
| **3. Observatório do Crepúsculo Cósmico** | Plataforma circular de ardósia clara (`#C8C4D9`) com runas estelares | Abismo cósmico delineado por anéis astrais luminosos | Nuvens lilás (`#BDB2FF`), céu crepuscular gradiente contínuo |

---

## 4. 👑 DESIGN DOS CHEFES (BOSSES)

### Chefe 1: Sacerdotisa da Pétala Cadente (Botânico / Vento)
- **Silhueta (48x48):** Feições élficas, vestido volumoso em camadas de pétalas de rosa e asas membranosas de libélula translúcidas.
- **Paleta:** Rosa Flor de Cerejeira (`#FFB7B2`), Verde Musgo (`#E2F0CB`), Coral Claro (`#FFDAC1`).
- **Telegraph:** Asas pulsam em rosa vibrante 0.5s antes do disparo em espiral.

### Chefe 2: O Colosso de Quartzo Lapidado (Mineral / Geometria)
- **Silhueta (64x64):** Construto de 3 blocos flutuantes facetados que orbitam um núcleo central instável.
- **Paleta:** Quartzo Amarelo (`#FFF3B0`), Ametista Suave (`#D8B4F8`), Ciano Geométrico (`#B5EAEA`).
- **Telegraph:** O núcleo rotaciona rapidamente emitindo faíscas geométricas na direção do disparo dos feixes e estalactites.

### Chefe 3: A Tecelã das Constelações (Cósmico / Astral)
- **Silhueta (64x64):** Entidade sem pernas, torso superior com 4 braços articulados segurando fusos dourados; tronco inferior desmancha em névoa galáctica pastel.
- **Paleta:** Violeta Estelar (`#BDB2FF`), Turquesa Suave (`#9BF6FF`), Ouro Manteiga (`#FDFFB6`), Projéteis Carmim (`#FF6987`).
- **Telegraph:** Ergue os fusos luminosos e a arena escurece ligeiramente antes de acionar a grade de fios astrais.

---

## 5. 📦 ASSET MANIFEST (LISTA COMPLETA DE ASSETS POR PASTA)

### 📁 `res://assets/sprites/player/`
| Arquivo | Dimensões (Px) | Quadros (Frames) | FPS | Descrição |
| :--- | :---: | :---: | :---: | :--- |
| `player_idle.png` | 24x24 | 4 | 6 | Respiração sutil com capa e cartas orbitando em loop. |
| `player_run.png` | 24x24 | 6 | 10 | Corrida inclinada para frente com passos leves. |
| `player_dash.png` | 24x24 | 3 | 12 | Projeção rápida com silhueta alongada e rastro. |
| `player_cast.png` | 24x24 | 4 | 8 | Extensão do prisma luminoso desintegrando a carta usada. |
| `player_hurt.png` | 24x24 | 3 | 8 | Recuo momentâneo com perda temporária de saturação. |
| `player_hitbox_spark.png` | 4x4 | 2 | 4 | Ponto cintilante no peito do jogador para guia de Graze. |

---

### 📁 `res://assets/sprites/bosses/`
| Arquivo | Dimensões (Px) | Quadros (Frames) | FPS | Descrição |
| :--- | :---: | :---: | :---: | :--- |
| `boss1_petal_priestess_idle.png` | 48x48 | 6 | 8 | Levitação com ondulação suave do vestido de pétalas e asas. |
| `boss1_petal_priestess_cast.png` | 48x48 | 5 | 10 | Asas brilham em rosa intenso e braços se abrem para rajada. |
| `boss1_petal_priestess_hurt.png` | 48x48 | 2 | 6 | Reação de impacto com desprendimento de pétalas. |
| `boss2_quartz_colossus_idle.png` | 64x64 | 8 | 8 | Três blocos flutuantes orbitando o núcleo cintilante. |
| `boss2_quartz_colossus_charge.png` | 64x64 | 6 | 12 | Núcleo acelera a rotação emitindo feixes geométricos. |
| `boss2_quartz_colossus_hurt.png` | 64x64 | 2 | 6 | Fissuras de luz azul momentâneas nas facetas minerais. |
| `boss3_constellation_weaver_idle.png`| 64x64 | 8 | 8 | Névoa inferior ondulante com 4 braços segurando fusos. |
| `boss3_constellation_weaver_cast.png`| 64x64 | 6 | 10 | Erguimento dos fusos de luz tecendo teias astrais. |
| `boss3_constellation_weaver_hurt.png`| 64x64 | 3 | 6 | Distorção cósmica com estalos de luz lilás. |

---

### 📁 `res://assets/sprites/projectiles/`
| Arquivo | Dimensões (Px) | Quadros (Frames) | FPS | Descrição |
| :--- | :---: | :---: | :---: | :--- |
| `bullet_enemy_petal.png` | 8x8 | 2 | 6 | Pétala pontiaguda cortante em Coral Pastel (`#FF8B94`). |
| `bullet_enemy_seed.png` | 10x10 | 4 | 8 | Semente que pousa no solo e desabrocha em cruz. |
| `bullet_enemy_crystal.png` | 8x12 | 1 | - | Fragmento pontiagudo em Amarelo Queimado (`#FFD166`). |
| `bullet_enemy_stalactite.png` | 12x24 | 4 | 8 | Estalactite que cai do topo e finca na arena como obstáculo. |
| `bullet_enemy_astral_orb.png` | 12x12 | 6 | 10 | Esfera gravitacional que emite miniprojéteis em Carmim (`#FF6987`). |
| `bullet_enemy_thread_node.png` | 6x6 | 3 | 8 | Nó de luz que ancora os fios da grade cósmica na arena. |
| `bullet_player_homing_star.png` | 8x8 | 4 | 10 | Estrela mística azul-céu giratória com cauda de luz. |
| `bullet_player_petal_wave.png` | 6x6 | 2 | 8 | Projétil amigo em leque disparado pela Rajada Circular. |
| `shield_blossom_barrier.png` | 36x36 | 6 | 12 | Redoma translúcida de pétalas em Menta Suave (`#BFEAD6`). |

---

### 📁 `res://assets/sprites/environment/`
| Arquivo | Dimensões (Px) | Quadros (Frames) | Descrição |
| :--- | :---: | :---: | :--- |
| `tileset_garden.png` | 16x16 / tile | Autotile | Grama verde-menta, caminhos de pedra lavanda e flores. |
| `env_garden_lotus_lot.png` | 24x24 | 4 (loop) | Lótus flutuante que solta partículas suaves de esporos. |
| `env_garden_hedge_border.png` | 16x32 | Estático | Cerca viva densa com florzinhas para limite de arena. |
| `tileset_quartz_sanctuary.png` | 16x16 / tile | Autotile | Mármore rosa pálido com veios dourados e degraus. |
| `env_quartz_pillar.png` | 24x48 | Estático | Pilar de cristal translúcido com reflexo celeste. |
| `env_quartz_prism_float.png` | 16x24 | 6 (loop) | Prisma lapidado flutuante para marcação de arena. |
| `tileset_cosmic_observatory.png`| 16x16 / tile | Autotile | Lajes de ardósia clara com glifos e runas estelares. |
| `env_cosmic_clouds_bg.png` | 320x180 | Pan contínuo| Mar de nuvens lilás pastel em gradiente crepuscular. |
| `env_cosmic_astral_ring.png` | 32x32 | 8 (loop) | Anéis luminosos que formam o parapeito sobre o abismo. |

---

### 📁 `res://assets/sprites/cards/`
| Arquivo | Dimensões (Px) | Descrição |
| :--- | :---: | :--- |
| `card_frame_standard.png` | 20x30 | Moldura base retangular de papel pergaminho pastel com contorno roxo. |
| `card_frame_upgraded.png` | 20x30 | Moldura com ornamentos pontiagudos dourados (`#FFF176`) e cantos reforçados. |
| `icon_card_homing_star.png` | 12x12 | Ícone da Estrela Cadente mágica sobre fundo azul-céu. |
| `icon_card_blossom_shield.png`| 12x12 | Ícone do Escudo de Pétalas sobre fundo menta. |
| `icon_card_petal_burst.png` | 12x12 | Ícone de 8 pétalas irradiando sobre fundo pêssego. |
| `icon_card_ether_breeze.png` | 12x12 | Ícone de folhas ao vento sobre fundo lavanda. |

---

### 📁 `res://assets/sprites/ui/`
| Arquivo | Dimensões (Px) | Quadros | Descrição |
| :--- | :---: | :---: | :--- |
| `ui_heart_full.png` | 9x9 | 1 | Coração de vida cheio em Rosa Pastel (`#FF8B94`) com outline roxo. |
| `ui_heart_empty.png` | 9x9 | 1 | Contorno vazio de coração translúcido. |
| `ui_ether_gauge_arc.png` | 64x18 | 1 | Trilho em arco para a barra de Éter. |
| `ui_ether_fill_liquid.png` | 60x14 | 1 | Preenchimento dinâmico de Éter que ganha brilho em turquesa cheia. |
| `ui_graze_spark.png` | 8x8 | 4 | Centelha que salta do ponto do peito ao realizar esquiva milimétrica. |
| `ui_hotkey_badge.png` | 10x8 | 1 | Marcador de tecla minúsculo [1], [2], [3], [4] com contorno escuro. |
| `ui_font_bitmap_5x7.png` | - | Bitmap | Fonte de pixels nítida para custos e valores sem borramento. |

---

## 6. 🛠️ PADRÃO DE EXPORTAÇÃO PARA ARTISTAS
1. **Formato:** PNG com canal alfa (RGBA8).
2. **Spritesheets:** Arquivos organizados horizontalmente em grade regular (ex: `frame_width x frame_height`).
3. **Pivô de Origem (Origin Pivot):**
   - Personagens e Inimigos: Centro inferior (para ordenação de profundidade no eixo Y).
   - Projéteis e Efeitos FX: Centro exato (`(width/2, height/2)`).
