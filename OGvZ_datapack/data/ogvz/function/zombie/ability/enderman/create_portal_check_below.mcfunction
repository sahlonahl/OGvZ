#> Description: Performs a check if the ender portal can be created below.

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

# Return fail if there is any shrine block markers nearby.
execute positioned ~-12 ~ ~-12 align xyz if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine_block,dx=24,dy=6,dz=24] run title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" You can't create the portal inside the shrine!",color:"light_purple"} \
]
execute positioned ~-12 ~ ~-12 align xyz if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine_block,dx=24,dy=6,dz=24] run tag @s add temp.fail
