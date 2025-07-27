give @s minecraft:golden_pickaxe[ \
  minecraft:custom_data={adventure_mode:1}, \
  minecraft:lore=[ \
    {text:"Can Break:",color:"gray",italic:false}, \
    {text:"Dwarf Blocks",color:"dark_gray",italic:false}, \
    {text:" "}, \
    {text:"Cannot Break:",color:"gray",italic:false}, \
    {text:"Reinforced Bricks",color:"dark_gray",italic:false}, \
    {text:"Block of Gold",color:"dark_gray",italic:false} \
  ], \
  minecraft:attribute_modifiers=[ \
    { \
      id:"minecraft:base_attack_damage", \
      type:"minecraft:attack_damage", \
      amount:-1.0, \
      operation:"add_multiplied_total", \
      slot:"mainhand", \
      display:{ \
        type:"override", \
        value:{text:" 0 Attack Damage",color:"dark_green"} \
      } \
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
      amount:0.0, \
      operation:"add_value", \
      slot:"mainhand", \
      display:{ \
        type:"override", \
        value:{text:" 3 Attack Reach",color:"dark_green"} \
      } \
    } \
  ], \
  minecraft:can_break=[ \
    {blocks:"#ogvz:dwarf_blocks"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:can_break" \
    ] \
  } \
]
