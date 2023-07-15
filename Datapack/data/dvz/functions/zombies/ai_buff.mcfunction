# -------------------------------------------
# Called By: dvz:tick
# File Name: AI_buff
# File Purpose: Buffs AI mobs to be threats and adds them to the monster team so they won't attack player mobs
# Created By: Zaffre
# 
# Created On: 2020.04.15
# Last Modified On: 2022.12.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

data merge entity @s[tag=!AIbuffed] {Attributes:[{Name:generic.follow_range,Base:60}]}
effect give @s[type=!silverfish,tag=!AIbuffed,tag=!explode] regeneration 999999 0 true
effect give @s[type=!silverfish,tag=!AIbuffed,tag=!explode] speed 999999 1 true
effect give @s[type=!silverfish,tag=!AIbuffed,tag=!explode] dolphins_grace 999999 0 true
data merge entity @s[type=zombie,tag=!endermine,tag=!AIbuffed] {HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
data merge entity @s[type=husk,tag=!AIbuffed] {HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
data merge entity @s[type=wither_skeleton,tag=!AIbuffed] {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}},{}],HandDropChances:[0.000F,0.085F]}
data merge entity @s[type=stray,tag=!AIbuffed] {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}},{}],HandDropChances:[0.000F,0.085F]}
data merge entity @s[type=creeper,tag=!AIbuffed,tag=!explode] {Fuse:25}
data merge entity @s[type=drowned,tag=!AIbuffed] {HandItems:[{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"minecraft:impaling",lvl:5s},{id:"minecraft:channeling",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:golden_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],ArmorDropChances:[0.000F,0.085F,0.085F,0.085F]}
data merge entity @s[type=pillager,tag=!AIbuffed,tag=!legion] {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s},{id:"minecraft:piercing",lvl:4s},{id:"minecraft:quick_charge",lvl:3s}]}},{}],HandDropChances:[0.000F,0.085F]}
data merge entity @s[type=shulker,tag=!shulker_block,tag=!AIbuffed] {AttachFace:0b,Color:10b}
effect give @s[type=enderman,tag=!AIbuffed] strength 999999 0 true
effect give @s[type=spider,tag=!AIbuffed] speed 999999 2 true
data merge entity @s[type=spider,tag=!AIbuffed] {Health:24f,Attributes:[{Name:generic.max_health,Base:24}]}

data merge entity @s[type=horse,tag=!AIbuffed] {Health:30f,Tame:1b,ActiveEffects:[{Id:10,Amplifier:0b,Duration:199980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0.18}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{}}
data merge entity @s[type=zombie_horse,tag=!AIbuffed] {Health:20f,Tame:1b,Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.2},{Name:horse.jump_strength,Base:1}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{}}
data merge entity @s[type=skeleton_horse,tag=!AIbuffed] {Health:20f,Tame:1b,Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.2},{Name:horse.jump_strength,Base:1}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{}}

team join zMONSTER @s[tag=!explode]
data merge entity @s[tag=!explode] {Team:"zMONSTER"}
tag @s add AIbuffed
