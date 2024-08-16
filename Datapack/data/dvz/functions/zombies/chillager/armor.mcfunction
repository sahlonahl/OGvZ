# -------------------------------------------
# Called By: dvz:tick
# File Name: armor
# File Purpose: reapplies armor to weakened/invisible chillager
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.08.18
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

item replace entity @s[tag=chillager,tag=invis,nbt=!{ActiveEffects:[{Id:14}]}] armor.head with firework_star{CustomModelData:4,display:{Name:'{"text":"Chillager Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id: "protection", lvl: 1},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=chillager,tag=invis,nbt=!{ActiveEffects:[{Id:14}]}] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 1456243}, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=chillager,tag=invis,nbt=!{ActiveEffects:[{Id:14}]}] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 1456243}, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=chillager,tag=invis,nbt=!{ActiveEffects:[{Id:14}]}] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 1456243}, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1

tag @s[tag=chillager,tag=invis] remove invis