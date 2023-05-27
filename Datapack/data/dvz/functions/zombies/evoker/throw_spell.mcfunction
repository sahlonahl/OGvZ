# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: throw_spell
# File Purpose: Summons projectile for the evoker
# Created By: Zaffre
# 
# Created On: 2023.03.09
# Last Modified On: 2023.03.14
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=evoker,scores={DVZ.evothrow.cool=1..}] run tellraw @s ["",{"text":" * [Throw Spell] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.ghast.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute as @s if entity @s[tag=evoker,scores={DVZ.evothrow.cool=0}] run tellraw @s {"text":" * [Throw Spell] Poof!","color":"red"}

execute if entity @s[tag=evoker,scores={DVZ.evothrow.cool=0}] run summon wither_skull ~ 400 ~ {Glowing:1b,Tags:["projectile","evoker_spell"]}
execute if entity @s[tag=evoker,scores={DVZ.evothrow.cool=0}] run function dvz:zombies/evoker/throw_spell2

execute if entity @s[tag=evoker,scores={DVZ.evothrow.cool=0}] run playsound entity.evoker.prepare_attack master @a ~ ~ ~ 50 0.9 0.2

execute as @s if entity @s[tag=evoker,scores={DVZ.evothrow.cool=0}] run scoreboard players set @s DVZ.evothrow.cool 15
execute as @s if entity @s[tag=evoker,scores={DVZ.evothrow.cool=0}] run scoreboard players set @s DVZ.rclick 0