#> Give monster players a compass to point them towards the shrine
# Called by: all monster spawning functions

# places the compass in the last hotbar spot specifically (specific location is necessary later)
item replace entity @s hotbar.8 with compass[ \
  minecraft:custom_data={"shrine_tracker":true}, \
  minecraft:lodestone_tracker={ \
    "target":{ \
      pos:[I;0,0,0], \
      dimension:overworld}, \
    tracked:false \
  } \
]

#tellraw @a ["Shrine location should be: ",lodestone.x," , ",lodestone.z]

# modifythe pointing of the compass (using macros)
function ogvz:zombie/shrine_compass_update with storage ogvz.game.shrine_location lodestone
