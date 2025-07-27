#> Description: Gives the iron rapier to the player.

give @s minecraft:music_disc_cat[ \
  !minecraft:jukebox_playable, \
  minecraft:item_name="Iron Rapier", \
  minecraft:item_model="ogvz:iron_rapier", \
  minecraft:lore=[{text:"Blocks Attacks",color:"gray",italic:false}], \
  minecraft:rarity="common", \
  minecraft:attribute_modifiers=[ \
    { \
      id:"minecraft:base_attack_damage", \
      type:"minecraft:attack_damage", \
      amount:4.0, \
      operation:"add_value", \
      slot:"mainhand" \
    }, \
    { \
      id:"minecraft:base_attack_speed", \
      type:"minecraft:attack_speed", \
      amount:-1.8, \
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
  minecraft:max_damage=250, \
  minecraft:damage=0, \
  minecraft:repairable={items:"#minecraft:iron_tool_materials"}, \
  minecraft:enchantable={value:14}, \
  minecraft:weapon={}, \
  minecraft:tool={ \
    can_destroy_blocks_in_creative:false, \
    damage_per_block:1, \
    rules:[ \
      { \
        blocks:"#minecraft:sword_instantly_mines", \
        speed:3.4028235e+38 \
      }, \
      { \
        blocks:"minecraft:cobweb", \
        correct_for_drops:true, \
        speed:15.0 \
      }, \
      { \
        blocks:"#minecraft:sword_efficient", \
        speed:1.5 \
      } \
    ] \
  }, \
  minecraft:blocks_attacks={ \
    damage_reductions:[ \
      { \
        type:"#ogvz:is_physical", \
        base:0.0, \
        factor:0.5 \
      } \
    ], \
    item_damage:{ \
      threshold:0, \
      base:1, \
      factor:0 \
    }, \
    bypassed_by:"#minecraft:bypasses_shield" \
  } \
]
