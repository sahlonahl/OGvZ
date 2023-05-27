# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: ruby
# File Purpose: Dwarven Ruby effect when right clicked by the Dragon Warrior
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.29
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: gives Dwarves 100 mana
# -------------------------------------------

execute as @s[tag=dragon,scores={DVZ.ruby.cool=1..}] run tellraw @s ["",{"text":" * [Dwarven Ruby] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.ruby.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute if entity @s[tag=dragon,level=..29] run tellraw @s {"text":" * [Dwarven Ruby] You need at least 30 Mana!","color":"dark_red"}
tag @s[tag=dragon,scores={DVZ.ruby.cool=0},level=30..] add RUBYuse

execute as @s if entity @s[tag=RUBYuse] run xp add @a[tag=dwarves,tag=!dragon] 100 levels
execute as @s[tag=RUBYuse] run tellraw @s {"text":" * [Dwarven Ruby] Poof!","color":"red"}
execute as @s if entity @s[tag=RUBYuse] run execute as @a[tag=dwarves,tag=!dragon] run playsound block.beacon.activate master @s ~ ~ ~ 1 2

execute as @s if entity @s[tag=RUBYuse] run execute as @s run xp add @s -30 levels
execute as @s[tag=RUBYuse] run scoreboard players set @s DVZ.ruby.cool 60
tag @s[tag=dragon,scores={DVZ.ruby.cool=1..}] remove RUBYuse
