#> Description: Turns the player into the ocelot.

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
tag @s add ogvz.zombie.class.ocelot

# Give the player the mana tag.
tag @s add ogvz.mana

# Multiply movement speed by 1.4 and nullify fall damage using attributes.
attribute @s minecraft:movement_speed modifier add ogvz.ocelot.movement_speed 0.4 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier add ogvz.ocelot.fall_damage_multiplier -1.0 add_multiplied_total

# Put the player on the ocelot zombie team.
team join z3OCELOT @s

### Equip the player with ocelot armor (leather tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Ocelot Head",color:"aqua"}, \
  minecraft:item_model="ogvz:ocelot_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:1,operation:"add_value",slot:"head",id:"ogvz:head"} \
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
  minecraft:item_name={text:"Ocelot Chestplate"}, \
  minecraft:dyed_color=16768372, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
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
  minecraft:item_name={text:"Ocelot Leggings"}, \
  minecraft:dyed_color=16180138, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
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
  minecraft:item_name={text:"Ocelot Boots"}, \
  minecraft:dyed_color=9327914, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:1,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]

### Give the player all the ocelot items.
# Slapper Fish
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6330}, \
  minecraft:item_model="ogvz:slapper_fish", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Slapper Fish",color:"aqua"}, \
  minecraft:lore=[ \
    {text:" "}, \
    {text:"Charge",color:"blue",italic:false,underlined:true}, \
    {text:"Increase the power of the",color:"blue"}, \
    {text:"knocback for the next attack.",color:"blue"}, \
    {text:"Requires 15 mana",color:"red",italic:false}, \
    {text:"Weapon Ability",color:"green",italic:false} \
  ], \
  minecraft:enchantments={ \
    "minecraft:knockback":2 \
  }, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Mana Steal
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6331}, \
  minecraft:item_model="ogvz:mana_steal", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Mana Steal",color:"gold"}, \
  minecraft:lore=[ \
    {text:"Shoot a mana stealing beam.",color:"blue"}, \
    {text:"10 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Disarm
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6332}, \
  minecraft:item_model="ogvz:disarm", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Disarm",color:"red"}, \
  minecraft:lore=[ \
    {text:"Apply weakness and mining",color:"blue"}, \
    {text:"fatigue to all dwarves in front",color:"blue"}, \
    {text:"of you.",color:"blue"}, \
    {text:"Requires 45 mana",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Cooked Cod x64
give @s minecraft:cooked_cod[ \
  minecraft:food={ \
    nutrition:8, \
    saturation:12.8 \
  } \
] 64

# Give the player the Ender Eye ability if the ender portal exists.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] as @s at @s run function ogvz:give/other/ender_eye

# Give the player the Suicide Pill.
execute as @s at @s run function ogvz:give/hidden/suicide_pill_slot_0

# Give the player the punish tag and set a timer for it's removal.
tag @s add ogvz.zombie.punish
scoreboard players set @s ogvz.zombie.punish_timer.ticks 600
