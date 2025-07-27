#> Description: Kill the player.

# Remove the suicide pill.
item replace entity @s[gamemode=!creative,tag=temp.use.mainhand] weapon.mainhand with minecraft:air
item replace entity @s[gamemode=!creative,tag=temp.use.offhand] weapon.offhand with minecraft:air

# Display an activation message.
title @s[tag=temp.teleported] actionbar [ \
  "", \
  {text:"[Suicide Pill]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Deal high cyanide type damage to the player.
damage @s 10000 ogvz:cyanide
