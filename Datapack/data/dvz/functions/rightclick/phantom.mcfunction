# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: phantom
# File Purpose: Spawn items for Phantom class
# Created By: Zaffre
# 
# Created On: 2022.06.30
# Last Modified On: 2024.05.1
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: Severe ADHD is such a wonderful thing, isn't it? 
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add phantom
team join zPHANTOM @s[tag=phantom,tag=!selectedclass]
clear @s[tag=!selectedclass]
gamemode adventure @s[tag=phantom]

give @s[tag=phantom,tag=!selectedclass] cooked_beef 64
give @s[tag=phantom,tag=!selectedclass] stone_sword{Unbreakable:1b,Enchantments:[{id:"knockback",lvl:1}]}
give @s[tag=phantom,tag=!selectedclass] carrot_on_a_stick{CustomModelData:72,Unbreakable:1b,display:{Name:'{"text":"Delirium - Debuff dwarves","color":"blue"}',Lore:['[{"text":"Launches a projectile that applies an AoE debuff to dwarves."}]','[{"text":"8 second cooldown!","color":"red"}]']}} 1
give @s[tag=phantom,tag=!selectedclass] carrot_on_a_stick{CustomModelData:11,Unbreakable:1b,display:{Name:'{"text":"Steal Mana","color":"blue"}',Lore:['[{"text":"Drains 35 mana from a dwarf in range."}]','[{"text":"15 second cooldown!","color":"red"}]']}} 1
give @s[tag=phantom,tag=!selectedclass] carrot_on_a_stick{CustomModelData:75,Unbreakable:1b,display:{Name:'{"text":"Leap","color":"gold"}',Lore:['[{"text":"Leap into the air!."}]','[{"text":"Good for getting air."}]','[{"text":"15 second cooldown!","color":"red"}]']}} 1
give @s[tag=phantom,tag=!selectedclass] firework_rocket 32
#give @s[tag=phantom,tag=!selectedclass] splash_potion{CustomPotionEffects:[{Id:2,Amplifier:1b,Duration:200},{Id:4,Amplifier:1b,Duration:200},{Id:18,Amplifier:1b,Duration:200}],CustomPotionColor:0} 8
#give @s[tag=phantom,tag=!selectedclass] lingering_potion{CustomPotionEffects:[{Id:2,Amplifier:1b,Duration:200},{Id:4,Amplifier:1b,Duration:200},{Id:18,Amplifier:1b,Duration:200}],CustomPotionColor:0} 8
summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:8b,tag:{display:{Name:'{"text":"Phantom Potion"}'},CustomPotionEffects:[{Id:2,Amplifier:1b,Duration:200},{Id:4,Amplifier:1b,Duration:200},{Id:18,Amplifier:1b,Duration:200}],CustomPotionColor:0}}}
summon item ~ ~ ~ {Item:{id:"minecraft:lingering_potion",Count:8b,tag:{display:{Name:'{"text":"Phantom Potion"}'},CustomPotionEffects:[{Id:2,Amplifier:1b,Duration:200},{Id:4,Amplifier:1b,Duration:200},{Id:18,Amplifier:1b,Duration:200}],CustomPotionColor:0}}}

item replace entity @s[tag=phantom,tag=!selectedclass] armor.head with player_head{SkullOwner:{Id:[I;-899131844,-1140113241,-1737191005,1607106852],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQ2ODMwZGE1ZjgzYTNhYWVkODM4YTk5MTU2YWQ3ODFhNzg5Y2ZjZjEzZTI1YmVlZjdmNTRhODZlNGZhNCJ9fX0="}]}},display:{Name:'{"text":"Phantom Head","italic":false}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:10},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=phantom,tag=!selectedclass] armor.chest with elytra{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s[tag=phantom,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 2704794}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}], AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-4,Operation:0,UUID:[I;-840866818,-21950756,-828424277,-758675542]}]} 1
item replace entity @s[tag=phantom,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 2704794}, Enchantments: [{id: "feather_falling", lvl: 100}, {id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1

#effect give @s[tag=phantom,tag=!selectedclass] jump_boost 1000000 255 true

tag @s add selectedclass

execute as @s[tag=phantom] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
execute as @a[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Nature:1b}}]}] run function dvz:zombies/natures