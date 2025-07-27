#> Description: Handles all passive mana gain/loss for dwarves.
#> Comment: Micromana (1 millionth of a mana) is used to more accuratly track the player's mana.

# If a non-builder dwarf is at or below 99 mana (below 100 mana cap), they gain 1 mana every second (50000 micromana every tick).
# If the shrine is damaged, they get less mana regen, 0.05 mana every second (2500 micromana every tick) less for each shrine block broken.
# If the shrine is destroyed (shrine health: 0), they get no mana regen.
execute if score &ogvz ogvz.game.shrine_health matches 12.. run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 50000
execute if score &ogvz ogvz.game.shrine_health matches 11 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 47500
execute if score &ogvz ogvz.game.shrine_health matches 10 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 45000
execute if score &ogvz ogvz.game.shrine_health matches 9 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 42500
execute if score &ogvz ogvz.game.shrine_health matches 8 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 40000
execute if score &ogvz ogvz.game.shrine_health matches 7 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 37500
execute if score &ogvz ogvz.game.shrine_health matches 6 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 35000
execute if score &ogvz ogvz.game.shrine_health matches 5 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 32500
execute if score &ogvz ogvz.game.shrine_health matches 4 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 30000
execute if score &ogvz ogvz.game.shrine_health matches 3 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 27500
execute if score &ogvz ogvz.game.shrine_health matches 2 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 25000
execute if score &ogvz ogvz.game.shrine_health matches 1 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 22500
execute if score &ogvz ogvz.game.shrine_health matches 0 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup.micromana 0

# If a builder dwarf is at or below 9998 mana (below 9999 mana cap), they gain 0.5 mana every second (25000 micromana every tick).
# If the shrine is damaged, they get less mana regen, 0.025 mana every second (1250 micromana every tick) less for each shrine block broken.
# If the shrine is destroyed (shrine health: 0), they get no mana regen.
execute if score &ogvz ogvz.game.shrine_health matches 12.. run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 25000
execute if score &ogvz ogvz.game.shrine_health matches 11 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 23750
execute if score &ogvz ogvz.game.shrine_health matches 10 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 22500
execute if score &ogvz ogvz.game.shrine_health matches 9 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 21250
execute if score &ogvz ogvz.game.shrine_health matches 8 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 20000
execute if score &ogvz ogvz.game.shrine_health matches 7 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 18750
execute if score &ogvz ogvz.game.shrine_health matches 6 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 17500
execute if score &ogvz ogvz.game.shrine_health matches 5 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 16250
execute if score &ogvz ogvz.game.shrine_health matches 4 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 15000
execute if score &ogvz ogvz.game.shrine_health matches 3 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 13750
execute if score &ogvz ogvz.game.shrine_health matches 2 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 12500
execute if score &ogvz ogvz.game.shrine_health matches 1 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 11250
execute if score &ogvz ogvz.game.shrine_health matches 0 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 0

# If a non-builder dwarf is near shrine, they gain 1 mana every second (50000 micromana every tick), up to 200 mana.
# This only works during zombie phase (4) and last stand phase (5).
execute if score &ogvz ogvz.game.phase matches 4..5 if score &ogvz ogvz.game.shrine_health matches 1.. positioned ~ ~ ~ if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=..4] run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..199] ogvz.dwarf.mana_buildup.micromana 50000

# If a builder dwarf is near shrine, they gain 0.5 mana every second (25000 micromana every tick).
# This only works during zombie phase (4) and last stand phase (5).
execute if score &ogvz ogvz.game.phase matches 4..5 if score &ogvz ogvz.game.shrine_health matches 1.. positioned ~ ~ ~ if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=..4] run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup.micromana 25000

# If a non-builder dwarf is under the effect of Mana Regeneration (Luck) effect, then they regenerate 1 mana every second (50000 micromana every tick), up to 200 mana.
scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..199,predicate=ogvz:effect/luck] ogvz.dwarf.mana_buildup.micromana 50000

# If a builder dwarf is under the effect of Mana Regeneration (Luck) effect, then they regenerate 0.5 mana every second (25000 micromana every tick).
scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998,predicate=ogvz:effect/luck] ogvz.dwarf.mana_buildup.micromana 25000

# If a non-hero non-builder dwarf is near the glowing shell's area of effect, then they regenerate 2 mana every second (100000 micromana every tick), up to 200 mana.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.glowing_shell,distance=..4.3] run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,tag=!ogvz.dwarf.class.hero,level=..199] ogvz.dwarf.mana_buildup.micromana 100000

# If a non-hero builder dwarf is near the glowing shell's area of effect, then they regenerate 1 mana every second (50000 micromana every tick).
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.glowing_shell,distance=..4.3] run scoreboard players add @s[tag=ogvz.dwarf.class.builder,tag=!ogvz.dwarf.class.hero,level=..9998,predicate=ogvz:effect/luck] ogvz.dwarf.mana_buildup.micromana 50000

# If the Assassin Slayer is under the effect of Cloak of Shadows, then they lose 2 mana every second (100000 micromana every tick).
scoreboard players remove @s[tag=ogvz.dwarf.class.hero.assassin_slayer.invisible] ogvz.dwarf.mana_buildup.micromana 100000
