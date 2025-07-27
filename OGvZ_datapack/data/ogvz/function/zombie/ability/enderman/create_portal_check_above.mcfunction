#> Description: Performs a check if an ender portal can be opened above.

# Return fail if there isn't 7 non-solid blocks above you.
execute unless block ~ ~0 ~ #ogvz:go_through run title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" There is not enough room!",color:"light_purple"} \
]
execute unless block ~ ~0 ~ #ogvz:go_through run tag @s add temp.fail
execute unless block ~ ~1 ~ #ogvz:go_through run title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" There is not enough room!",color:"light_purple"} \
]
execute unless block ~ ~1 ~ #ogvz:go_through run tag @s add temp.fail
execute unless block ~ ~2 ~ #ogvz:go_through run title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" There is not enough room!",color:"light_purple"} \
]
execute unless block ~ ~2 ~ #ogvz:go_through run tag @s add temp.fail
execute unless block ~ ~3 ~ #ogvz:go_through run title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" There is not enough room!",color:"light_purple"} \
]
execute unless block ~ ~3 ~ #ogvz:go_through run tag @s add temp.fail
execute unless block ~ ~4 ~ #ogvz:go_through run title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" There is not enough room!",color:"light_purple"} \
]
execute unless block ~ ~4 ~ #ogvz:go_through run tag @s add temp.fail
execute unless block ~ ~5 ~ #ogvz:go_through run title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" There is not enough room!",color:"light_purple"} \
]
execute unless block ~ ~5 ~ #ogvz:go_through run tag @s add temp.fail
execute unless block ~ ~6 ~ #ogvz:go_through run title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" There is not enough room!",color:"light_purple"} \
]
execute unless block ~ ~6 ~ #ogvz:go_through run tag @s add temp.fail

# Summon 2 temporary markers.
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:marker run tag @s add temp.ray_origin
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:marker run tag @s add temp.ray

# Rotate the ray marker so it faces straight up.
rotate @n[type=minecraft:marker,tag=temp.ray] 0 -90

# Raycast the marker up.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/enderman/create_portal_above_loop

# Return fail if there is any shrine block markers near the ray.
execute at @n[type=minecraft:marker,tag=temp.ray] positioned ~-12 ~-7 ~-12 align xyz if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine_block,dx=24,dy=6,dz=24] run title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" You can't create the portal inside the shrine!",color:"light_purple"} \
]
execute at @n[type=minecraft:marker,tag=temp.ray] positioned ~-12 ~-7 ~-12 align xyz if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine_block,dx=24,dy=6,dz=24] run tag @s add temp.fail

# Kill the temporary markers.
kill @e[type=minecraft:marker,tag=temp.ray_origin]
kill @e[type=minecraft:marker,tag=temp.ray]
