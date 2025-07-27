#> Description: Turns the player into the hoglin.

# Clear the player's inventory and effects.
clear @s
effect clear @s

# Fully heal and saturate the player.
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

# Remove tags, attributes and clear scoreboards off the player.
execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes
execute as @s at @s run function ogvz:misc/clear_scoreboards

# Give the player the proper tags.
tag @s add ogvz.zombie
tag @s add ogvz.zombie.class
tag @s add ogvz.zombie.class.hoglin

# Increase max health by 6 hearts using an attribute.
attribute @s minecraft:max_health modifier add ogvz.hoglin.max_health 12 add_value

# Put the player on the hoglin zombie team.
team join z5HOGLIN @s

### Equip the player with hoglin armor (iron tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Hoglin Head",color:"aqua"}, \
  minecraft:item_model="ogvz:hoglin_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":3, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"head",id:"ogvz:head"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Chestplate
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Hoglin Chestplate"}, \
  minecraft:dyed_color=13206117, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:6,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
# Leggings
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Hoglin Leggings"}, \
  minecraft:dyed_color=13206117, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:5,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
# Boots
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Hoglin Boots"}, \
  minecraft:dyed_color=13206117, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]

### Give the player all the hoglin items.
# Golden Axe
give @s minecraft:golden_axe[ \
  minecraft:enchantments={ \
    "minecraft:sharpness":5, \
    "ogvz:hunger_drain":1 \
  }, \
  minecraft:lore=[ \
    {text:"Disables Shields",color:"gray",italic:false} \
  ], \
  minecraft:attribute_modifiers=[ \
    { \
      id:"minecraft:base_attack_damage", \
      type:"minecraft:attack_damage", \
      amount:9.0, \
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
  minecraft:unbreakable={}, \
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
# Steak x64
give @s minecraft:cooked_beef 64

# Give the player the Ender Eye ability if the ender portal exists.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] as @s at @s run function ogvz:give/other/ender_eye

# Give the player the Suicide Pill.
execute as @s at @s run function ogvz:give/hidden/suicide_pill_slot_0

# Display a hoglin message to all players that joined the game.
tellraw @a[tag=ogvz.joined_game] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {selector:"@s",color:"light_purple"}, \
  {text:" has risen!",color:"light_purple"} \
]

# Play a global sound to all players that joined the game.
execute as @a[tag=ogvz.joined_game] run playsound minecraft:entity.zoglin.angry player @s ~ ~512 ~ 1 0.8 1
execute as @a[tag=ogvz.joined_game] run playsound minecraft:entity.zoglin.angry player @s ~ ~512 ~ 1 1.5 1
execute as @a[tag=ogvz.joined_game] run playsound minecraft:entity.hoglin.converted_to_zombified player @s ~ ~512 ~ 1 1 1
