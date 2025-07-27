#> Description: Removes the invibisiblity from the player.

# Revoke the advancement so it can be granted again.
advancement revoke @s only ogvz:misc/assassin_slayer_take_or_deal_damage_while_invisible

# Display the cancel message.
title @s actionbar [ \
  "", \
  {text:"[Cloak of Shadows]",bold:true,color:"light_purple"}, \
  {text:" Canceled!",color:"light_purple"} \
]

# Set the cooldown.
scoreboard players set @s ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds 5

# Remove the invisibility tag.
tag @s remove ogvz.dwarf.class.hero.assassin_slayer.invisible

# Clear the invisibility effect.
effect clear @s minecraft:invisibility

# Reapply the textures of the armor.
item modify entity @s armor.head ogvz:set_chainmail_item_model_head
item modify entity @s armor.chest ogvz:set_chainmail_item_model_chest
item modify entity @s armor.legs ogvz:set_chainmail_item_model_legs
item modify entity @s armor.feet ogvz:set_chainmail_item_model_feet

# Play cancel sound.
playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 0.5
