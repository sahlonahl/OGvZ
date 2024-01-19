# -------------------------------------------
# Called By: dvz:dwarves/tools/builder_structures
# File Name: north
# File Purpose: places large structures north of builder.
# Created By: Sahlonahl
# 
# Created On: 2022.09.24
# Last Modified On: 2024.01.18
# Last Modified By: wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @e[name="Builder Bunker",type=minecraft:glow_squid] at @s run place template dvz:builder_bunker ~3 ~ ~-6 clockwise_90
execute as @e[name="Builder Conduit",type=minecraft:glow_squid] at @s run place template dvz:builder_conduit ~-2 ~-2 ~-2
execute as @e[name="Builder Disposal",type=minecraft:glow_squid] at @s run place template dvz:builder_disposal ~-1 ~ ~-1
execute as @e[name="Builder Platform",type=minecraft:glow_squid] at @s run place template dvz:builder_platform ~-3 ~ ~-1 counterclockwise_90
execute as @e[name="Builder Rampart",type=minecraft:glow_squid] at @s run place template dvz:builder_rampart ~3 ~ ~-11 clockwise_90
execute as @e[name="Builder Stable",type=minecraft:glow_squid] at @s run place template dvz:builder_stable ~2 ~ ~-5 clockwise_90
execute as @e[name="Builder Talltower",type=minecraft:glow_squid] at @s run place template dvz:builder_talltower ~3 ~ ~-6 clockwise_90
execute as @e[name="Builder Tower",type=minecraft:glow_squid] at @s run place template dvz:builder_tower ~2 ~ ~-5 clockwise_90
execute as @e[name="Builder Workshop",type=minecraft:glow_squid] at @s run place template dvz:builder_workshop ~4 ~ ~-9 clockwise_90
execute as @e[name="TNT Cannon",type=minecraft:glow_squid] at @s run place template dvz:ogvz_tnt_cannon ~2 ~ ~-7 clockwise_90

execute as @e[name="Slayer Totem",type=minecraft:glow_squid] at @s run place template dvz:slayer_totem ~-1 ~ ~-1
execute as @e[name="Slayer Totem",type=minecraft:glow_squid] at @s run summon marker ~ ~2 ~ {Tags:[slayer_totem]}

execute as @s[type=minecraft:glow_squid] run particle minecraft:explosion ~ ~3 ~ 4 4 4 0.01 50
execute as @s[type=minecraft:glow_squid] run playsound minecraft:block.nether_bricks.break master @a ~ ~ ~ 10 0.5
execute as @s[type=minecraft:glow_squid] run playsound minecraft:block.chain.break master @a ~ ~ ~ 10 0.5
execute as @s[type=minecraft:glow_squid] run playsound minecraft:block.anvil.destroy master @a ~ ~ ~ 10 0.5

tag @s add struc