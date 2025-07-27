#> Description: Gives the stone axe to the player.

give @s minecraft:stone_axe[ \
  minecraft:lore=[ \
    {text:"Disables Shields",color:"gray",italic:false} \
  ], \
  minecraft:attribute_modifiers=[ \
    { \
      id:"minecraft:base_attack_damage", \
      type:"minecraft:attack_damage", \
      amount:5.0, \
      operation:"add_value", \
      slot:"mainhand" \
    }, \
    { \
      id:"minecraft:base_attack_speed", \
      type:"minecraft:attack_speed", \
      amount:-3.0, \
      operation:"add_value", \
      slot:"mainhand" \
    }, \
    { \
      id:"minecraft:entity_interaction_range.mainhand", \
      type:"minecraft:entity_interaction_range", \
      amount:0.0, \
      operation:"add_value", \
      slot:"mainhand", \
      display:{ \
        type:"override", \
        value:{text:" 3 Attack Reach",color:"dark_green"} \
      } \
    } \
  ], \
  minecraft:weapon={ \
    item_damage_per_attack:1, \
    disable_blocking_for_seconds:5.0 \
  }, \
  minecraft:tool={ \
    damage_per_block:1, \
    rules:[ \
      { \
        blocks:"#minecraft:incorrect_for_diamond_tool", \
        correct_for_drops:false \
      }, \
      { \
        blocks:"minecraft:cobweb", \
        correct_for_drops:true, \
        speed:15.0 \
      }, \
      { \
        blocks:"#minecraft:mineable/axe", \
        correct_for_drops:true, \
        speed:8.0 \
      } \
    ] \
  } \
]
