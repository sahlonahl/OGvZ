#> Description: Charge the slapper fish by giving it higher knockback.

# Return if the player used an already charged slapper fish.
execute if items entity @s[tag=temp.use.mainhand] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{"charged":1}] run return 0
execute if items entity @s[tag=temp.use.offhand] weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data~{"charged":1}] run return 0

# Display a fail message and return if the player doesn't have enough mana.
execute unless entity @s[level=15..] run title @s actionbar [ \
  "", \
  {text:"[Charge]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"15 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=15..] run return 0

# Remove 15 mana (levels).
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 15

# Play an activation sound.
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 1 1 

# Charge the Slapper Fish.
item modify entity @s[tag=temp.use.mainhand] weapon.mainhand ogvz:slapper_fish_charge
item modify entity @s[tag=temp.use.offhand] weapon.offhand ogvz:slapper_fish_charge
