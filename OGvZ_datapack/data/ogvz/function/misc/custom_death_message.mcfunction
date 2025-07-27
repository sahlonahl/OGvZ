#> Description: Shows a custom or the default death message.

# AbraxisPilot
execute as @s[predicate=ogvz:player/is_abraxispilot] run tellraw @a [ \
  "", \
  {text:"\u1100\u1101\u1102\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"red"}, \
  {"selector":"@s"}, \
  {text:" made a critical error and pilots no more.",color:"red"} \
]
execute as @s[predicate=ogvz:player/is_abraxispilot] at @s run function ogvz:misc/custom_death_effect/abraxispilot
execute as @s[predicate=ogvz:player/is_abraxispilot] run return 0

# Astraeos_
execute as @s[predicate=ogvz:player/is_astraeos_] run tellraw @a [ \
  "", \
  {text:"\u1100\u1101\u1102\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"red"}, \
  {"selector":"@s"}, \
  {text:" has fallen, now here be dragons.",color:"light_purple"} \
]
execute as @s[predicate=ogvz:player/is_astraeos_] at @s run function ogvz:misc/custom_death_effect/astraeos_
execute as @s[predicate=ogvz:player/is_astraeos_] run return 0

# Laikbruh
execute as @s[predicate=ogvz:player/is_laikbruh] run tellraw @a [ \
  "", \
  {text:"\u1100\u1101\u1102\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"red"}, \
  {"selector":"@s"}, \
  {text:" still hasn't come up with a custom death message...",color:"red"} \
]
execute as @s[predicate=ogvz:player/is_laikbruh] at @s run function ogvz:misc/custom_death_effect/laikbruh
execute as @s[predicate=ogvz:player/is_laikbruh] run return 0

# Muff1nArcades
execute as @s[predicate=ogvz:player/is_muff1narcades] run tellraw @a [ \
  "", \
  {text:"\u1100\u1101\u1102\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"red"}, \
  {"selector":"@s"}, \
  {text:" died, and is thinking of excuses (-_-;)",color:"red"} \
]
execute as @s[predicate=ogvz:player/is_muff1narcades] at @s run function ogvz:misc/custom_death_effect/muff1narcades
execute as @s[predicate=ogvz:player/is_muff1narcades] run return 0

# MunchieMan321
execute as @s[predicate=ogvz:player/is_munchieman321] run tellraw @a [ \
  "", \
  {text:"\u1100\u1101\u1102\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"red"}, \
  {"selector":"@s"}, \
  {text:" is impressed he lasted that long...",color:"red"} \
]
execute as @s[predicate=ogvz:player/is_munchieman321] at @s run function ogvz:misc/custom_death_effect/munchieman321
execute as @s[predicate=ogvz:player/is_munchieman321] run return 0

# Ozald
execute as @s[predicate=ogvz:player/is_ozald] run tellraw @a [ \
  "", \
  {text:"\u1100\u1101\u1102\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"red"}, \
  {text:"The risk ",color:"red"}, \
  {"selector":"@s"}, \
  {text:" took was calculated. He's just bad at math.",color:"red"} \
]
execute as @s[predicate=ogvz:player/is_ozald] at @s run function ogvz:misc/custom_death_effect/ozald
execute as @s[predicate=ogvz:player/is_ozald] run return 0

# Default death message.
execute as @s run tellraw @a [ \
  "", \
  {text:"\u1100\u1101\u1102\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"red"}, \
  {text:"The dwarf ",color:"red"}, \
  {"selector":"@s"}, \
  {text:" has fallen!",color:"red"} \
]
