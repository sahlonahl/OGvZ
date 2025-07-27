#> Description: Make the player and their armor invisible.

# Cancel invisibility if used when invisible.
execute as @s[tag=ogvz.zombie.class.chillager.invisible] at @s run return run function ogvz:zombie/ability/chillager/invisibility_cancel

# Hide the custom bars for a bit.
scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.chillager.invisibility.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Invisibility]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.chillager.invisibility.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.chillager.invisibility.cooldown.seconds=1..}] run return 0

# Show an activation message.
title @s actionbar [ \
  "", \
  {text:"[Invisibility]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Give the player the invisibility tag.
tag @s add ogvz.zombie.class.chillager.invisible

# Give the player infinite duration invisibility.
effect give @s minecraft:invisibility infinite 0

# Replace the textures of the armor with a blank ones.
item modify entity @s armor.head ogvz:remove_item_model_head
item modify entity @s armor.chest ogvz:remove_item_model_chest
item modify entity @s armor.legs ogvz:remove_item_model_legs
item modify entity @s armor.feet ogvz:remove_item_model_feet

# Play an invisibility sound and show particles.
playsound minecraft:entity.breeze.inhale player @a ~ ~ ~ 1 0.5
particle minecraft:spit ~ ~1 ~ 0 0 0 0.2 50
