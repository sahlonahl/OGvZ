#> Description: Remove the ender portal.

# Remove all ender portal blocks.
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 minecraft:air replace #ogvz:ender_portal_blocks

# Play sound and show particles.
playsound minecraft:block.end_portal.spawn player @a ~ ~10000 ~ 1 0.5 1
particle minecraft:reverse_portal ~ ~-1.5 ~ 3 1 3 1 1000

# Display a ender portal close message.
tellraw @a[tag=ogvz.joined_game] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"The ",color:"light_purple"}, \
  {text:"Ender Portal",color:"light_purple",bold:true}, \
  {text:" has been closed!",color:"light_purple"} \
]

# Kill the ender portal marker.
kill @s

# Remove all "Ender Eye" abilities.
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] run clear @a[gamemode=!creative,gamemode=!spectator] minecraft:carrot_on_a_stick[minecraft:custom_data~{active_id:9001}]
