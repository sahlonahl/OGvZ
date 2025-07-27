#> Description: Gives the light shield to the player.

give @s minecraft:shield[ \
  minecraft:item_name="Light Shield", \
  minecraft:lore=[ \
    {text:"Instant Blocking",color:"gray",italic:false} \
  ], \
  minecraft:blocks_attacks={ \
    block_delay_seconds:0, \
    damage_reductions:[ \
      { \
        type:"#ogvz:is_physical", \
        base:0, \
        factor:1.0 \
      }, \
      { \
        type:"#minecraft:is_explosion", \
        base:0, \
        factor:0.35 \
      } \
    ], \
    item_damage:{ \
      threshold:3.0, \
      base:0.0, \
      factor:1.0 \
    }, \
    block_sound:"minecraft:item.shield.block", \
    disabled_sound:"minecraft:item.shield.break", \
    bypassed_by:"#minecraft:bypasses_shield" \
  } \
]
