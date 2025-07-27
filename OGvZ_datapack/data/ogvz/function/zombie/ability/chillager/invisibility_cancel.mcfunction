#> Description: Take the player out of invisibility.

# Revoke the advancement so it can be granted again.
advancement revoke @s only ogvz:misc/chillager_take_or_deal_damage_while_invisible

# Hide custom bars for a bit.
scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20

# Display a cancel message.
title @s actionbar [ \
  "", \
  {text:"[Invisibility]",bold:true,color:"light_purple"}, \
  {text:" Canceled!",color:"light_purple"} \
]

# Set a cooldown.
scoreboard players set @s ogvz.chillager.invisibility.cooldown.seconds 5

# Remove the invisibility tag.
tag @s remove ogvz.zombie.class.chillager.invisible

# Clear the invisibility effect.
effect clear @s minecraft:invisibility

# Reapply the textures of the armor.
item modify entity @s armor.head ogvz:set_empty_item_model_head
item modify entity @s armor.chest ogvz:set_leather_item_model_chest
item modify entity @s armor.legs ogvz:set_leather_item_model_legs
item modify entity @s armor.feet ogvz:set_leather_item_model_feet
