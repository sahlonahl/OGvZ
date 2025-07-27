#> Description: Gives the worn trident to the player.

give @s minecraft:trident[ \
  minecraft:item_name="Worn Trident", \
  minecraft:lore=[ \
    {text:"Disables Shields",color:"gray",italic:false} \
  ], \
  minecraft:rarity="common", \
  minecraft:attribute_modifiers=[ \
    { \
      id:"minecraft:base_attack_damage", \
      type:"minecraft:attack_damage", \
      amount:6.0, \
      operation:"add_value", \
      slot:"mainhand" \
    }, \
    { \
      id:"minecraft:base_attack_speed", \
      type:"minecraft:attack_speed", \
      amount:-2.8, \
      operation:"add_value", \
      slot:"mainhand" \
    }, \
    { \
      id:"minecraft:entity_interaction_range.mainhand", \
      type:"minecraft:entity_interaction_range", \
      amount:0.5, \
      operation:"add_value", \
      slot:"mainhand", \
      display:{ \
        type:"override", \
        value:{text:" 3.5 Attack Reach",color:"dark_green"} \
      } \
    } \
  ], \
  minecraft:max_damage=1561, \
  minecraft:enchantable={value:10}, \
  minecraft:weapon={ \
    item_damage_per_attack:1, \
    disable_blocking_for_seconds:3.5 \
  }, \
  minecraft:tool={ \
    can_destroy_blocks_in_creative:false, \
    damage_per_block:1, \
    rules:[ \
      { \
        blocks:"minecraft:cobweb", \
        correct_for_drops:true, \
        speed:15.0 \
      } \
    ] \
  } \
]
