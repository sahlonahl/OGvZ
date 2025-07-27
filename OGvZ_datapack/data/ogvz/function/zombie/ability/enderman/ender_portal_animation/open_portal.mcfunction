#> Description: Open the ender portal.

# Open the portal
tag @s remove ogvz.marker.ender_portal.animation
kill @a[tag=ogvz.zombie.class.enderman.kill]
summon minecraft:lightning_bolt ~ ~-2 ~
playsound minecraft:block.end_portal.spawn player @a ~ ~10000 ~ 1 1 1

# Display an ender portal open message to all players.
tellraw @a[tag=ogvz.joined_game] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"The ",color:"light_purple"}, \
  {text:"Ender Portal",color:"light_purple",bold:true}, \
  {text:" has been opened!",color:"light_purple"} \
]

# Give every zombie player an Ender Eye ability.
execute as @a[tag=ogvz.zombie] at @s run function ogvz:give/other/ender_eye
