#> Description: Turns the player into the Wither Warrior dwarf hero.

# Remove the hero spawn disc if the player used it.
item replace entity @s[tag=temp.use.mainhand] weapon.mainhand with minecraft:air
item replace entity @s[tag=temp.use.offhand] weapon.offhand with minecraft:air

# Clear the player's inventory.
effect clear @s

# Fully heal and saturate the player.
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

# Remove tags, attributes and clear scoreboards from the player.
execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes
execute as @s at @s run function ogvz:misc/clear_scoreboards

# Give the player all the proper tags.
tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class
tag @s add ogvz.dwarf.class.hero
tag @s add ogvz.dwarf.class.hero.wither_warrior
tag @s add ogvz.mana

# Put the player on the wither warrior dwarf hero team.
team join d0WITHER_WARRIOR @s

# Unequip the player's armor.
execute as @s at @s run function ogvz:misc/drop_armor

### Give the player all the wither warrior items.
# Wither Warrior Helmet (armor)
item replace entity @s armor.head with minecraft:netherite_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Wither Warrior Helmet",color:"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"head",id:"ogvz:head"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"head",id:"ogvz:head"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Wither Warrior Chestplate (armor)
item replace entity @s armor.chest with minecraft:netherite_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Wither Warrior Chestplate",color:"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":5, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:8,operation:"add_value",slot:"chest",id:"ogvz:chest"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"chest",id:"ogvz:chest"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Wither Warrior Leggings (armor)
item replace entity @s armor.legs with minecraft:netherite_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Wither Warrior Leggings",color:"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:6,operation:"add_value",slot:"legs",id:"ogvz:legs"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Wither Warrior Boots (armor)
item replace entity @s armor.feet with minecraft:netherite_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Wither Warrior Boots",color:"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:feather_falling":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

# Whispersong
give @s minecraft:bow[ \
  minecraft:item_model="ogvz:whispersong", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name={text:"Whispersong",color:"aqua",bold:true}, \
  minecraft:lore=[ \
    {text:" "}, \
    {text:"Soul Power",color:"blue",italic:false,underlined:true}, \
    {text:"Shooting an arrow will consume a",color:"blue"}, \
    {text:"soul charge.",color:"blue"}, \
    {text:"If a soul charge has been",color:"blue"}, \
    {text:"consumed, the damage of the",color:"blue"}, \
    {text:"arrow will drastically increase.",color:"blue"}, \
    {text:"You can get soul charges by",color:"blue"}, \
    {text:"killing zombies with melee",color:"blue"}, \
    {text:"attacks.",color:"blue"}, \
    {text:"Enchantment",color:"green",italic:false}, \
    {text:" "}, \
    {text:"Unbreakable",color:"blue",italic:false}, \
    {text:"Heroic Item",color:"gold",italic:false,bold:true} \
  ], \
  minecraft:enchantments={ \
    "minecraft:power":5, \
    "minecraft:infinity":1, \
    "minecraft:flame":1, \
    "ogvz:soul_power":1 \
  }, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Sunfury
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4101}, \
  minecraft:item_name={text:"Sunfury",color:"red",bold:true}, \
  minecraft:item_model="ogvz:sunfury", \
  minecraft:enchantments={ \
    "minecraft:sharpness":5, \
    "minecraft:fire_aspect":2 \
  }, \
  minecraft:lore=[ \
    {text:" "}, \
    {text:"Phantom Slash",color:"blue",italic:false,underlined:true}, \
    {text:"Teleport forward a short",color:"blue"}, \
    {text:"distance.",color:"blue"}, \
    {text:"All zombies you pass through",color:"blue"}, \
    {text:"will be damaged and will have",color:"blue"}, \
    {text:"weakness, slowness and blindness",color:"blue"}, \
    {text:"applied to them.",color:"blue"}, \
    {text:"15 second cooldown",color:"red",italic:false}, \
    {text:"Requires 30 mana",color:"red",italic:false}, \
    {text:"Weapon Ability",color:"green",italic:false}, \
    {text:"Heroic Item",color:"gold",italic:false,bold:true} \
  ], \
  minecraft:attribute_modifiers=[ \
    { \
      id:"minecraft:base_attack_damage", \
      type:"minecraft:attack_damage", \
      amount:7.0, \
      operation:"add_value", \
      slot:"mainhand" \
    }, \
    { \
      id:"minecraft:base_attack_speed", \
      type:"minecraft:attack_speed", \
      amount:-2.4, \
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
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:max_damage=1561, \
  minecraft:damage=0, \
  minecraft:repairable={items:"minecraft:magma_cream"} \
]
#give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4101}, \
  minecraft:item_name={text:"Sunfury",color:"red",bold:true}, \
  minecraft:item_model="ogvz:sunfury", \
  minecraft:enchantments={ \
    "minecraft:sharpness":5, \
    "minecraft:fire_aspect":2 \
  }, \
  minecraft:lore=[ \
    {text:" "}, \
    {text:"Phantom Slash",color:"blue",italic:false,underlined:true}, \
    {text:"Teleport forward a short",color:"blue"}, \
    {text:"distance.",color:"blue"}, \
    {text:"All zombies you pass through",color:"blue"}, \
    {text:"will be damaged and will have",color:"blue"}, \
    {text:"weakness, slowness and blindness",color:"blue"}, \
    {text:"applied to them.",color:"blue"}, \
    {text:"15 second cooldown",color:"red",italic:false}, \
    {text:"Requires 30 mana",color:"red",italic:false}, \
    {text:"Weapon Ability",color:"green",italic:false}, \
    {text:"Heroic Item",color:"gold",italic:false,bold:true} \
  ], \
  minecraft:attribute_modifiers=[ \
    { \
      id:"minecraft:base_attack_damage", \
      type:"minecraft:attack_damage", \
      amount:7.0, \
      operation:"add_value", \
      slot:"mainhand" \
    }, \
    { \
      id:"minecraft:base_attack_speed", \
      type:"minecraft:attack_speed", \
      amount:-2.4, \
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
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:max_damage=1561, \
  minecraft:damage=0, \
  minecraft:repairable={items:"minecraft:magma_cream"}, \
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
  } \
]
# Soulstone
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={passive_id:4102}, \
  minecraft:item_model="ogvz:soulstone", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name={text:"Soulstone",color:"light_purple",bold:true}, \
  minecraft:lore=[ \
    {text:"Every time you get a kill, all",color:"blue"}, \
    {text:"non-hero dwarves gain a small",color:"blue"}, \
    {text:"amount of mana.",color:"blue"}, \
    {text:"Passive Item",color:"green",italic:false}, \
    {text:"Heroic Item",color:"gold",italic:false,bold:true} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

# Display a message about the player becoming the hero to all dwarves.
tellraw @a[tag=ogvz.dwarf] [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Due to their valiant efforts,\n",color:"yellow"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {"selector":"@s"}, \
  {text:"\n"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {text:"has been proclaimed as a ",color:"yellow"}, \
  {text:"Hero",color:"gold",bold:true}, \
  {text:"!",color:"yellow"} \
]

# Play a sound and create particles.
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0.04 30
