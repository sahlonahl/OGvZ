# -------------------------------------------
# Called By: dvz:tick
# File Name: lastdwarf
# File Purpose: Effects for the last remaining dwarf alive
# Created By: Zaffre
# 
# Created On: 2023.03.08
# Last Modified On: 2023.04.01
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Activates continuously in case dwarf loses their effects somehow
# -------------------------------------------


tellraw @s[tag=dwarves,tag=!lastdwarf] {"text":" \u2022 The shrine has granted you power. You're the last dwarf alive!","bold":true}
tellraw @a ["",{"text":" \u2022 ","bold":true,"color":"light_purple"},{"selector":"@p[tag=dwarves,tag=!lastdwarf,limit=1]","bold":true,"color":"light_purple"},{"text":" is the last dwarf alive!","bold":true,"color":"light_purple"}]
effect give @s[tag=dwarves] glowing infinite
effect give @s[tag=dwarves] speed infinite 1
effect give @s[tag=dwarves] regeneration infinite 0
effect give @s[tag=dwarves] strength infinite 1
effect give @s[tag=dwarves] jump_boost infinite 1
effect give @s[tag=dwarves] resistance infinite 0

tag @s[tag=dwarves,tag=!lastdwarf] add lastdwarf
