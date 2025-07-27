#> Description: Turns the player into the silverfish.

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
tag @s add ogvz.zombie.class.silverfish

# Multiply movement speed by 1.2 using an attribute.
attribute @s minecraft:movement_speed modifier add ogvz.silverfish.movement_speed 0.2 add_multiplied_total

# Set the silverfish egg bar to 10.
scoreboard players set @s ogvz.silverfish.silverfish_egg.count 10

# Put the player on the silverfish zombie team.
team join z4SILVERFISH @s

### Equip the player with silverfish armor (leather tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Silverfish Head",color:"aqua"}, \
  minecraft:item_model="ogvz:silverfish_head", \
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
  minecraft:item_name={text:"Silverfish Chestplate"}, \
  minecraft:dyed_color=8816262, \
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
  minecraft:item_name={text:"Silverfish Leggings"}, \
  minecraft:dyed_color=8816262, \
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
  minecraft:item_name={text:"Silverfish Boots"}, \
  minecraft:dyed_color=8816262, \
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

### Give the player all the silverfish items.
# Infest
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6410}, \
  minecraft:item_model="ogvz:infest", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Infest",color:"gray"}, \
  minecraft:lore=[ \
    {text:"Infest dwarf blocks with",color:"blue"}, \
    {text:"silverfish eggs.",color:"blue"}, \
    {text:"Requires 1 Silverfish Egg",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Roar
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6411}, \
  minecraft:item_model="ogvz:roar", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Roar",color:"gray"}, \
  minecraft:lore=[ \
    {text:"Hatch all silverfish eggs from",color:"blue"}, \
    {text:"the infested blocks.",color:"blue"}, \
    {text:"20 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Iron Shovel
give @s minecraft:iron_shovel[ \
  minecraft:unbreakable={}, \
    minecraft:lore=[ \
    {text:" "}, \
    {text:"When in Main Hand:",color:"gray",italic:false}, \
    {text:" 1 Attack Damage",color:"dark_green",italic:false}, \
    {text:" 1 Attack Speed",color:"dark_green",italic:false}, \
    {text:" 3 Attack Reach",color:"dark_green",italic:false}, \
    {text:"Unbreakable",color:"blue",italic:false} \
  ], \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:attack_damage",amount:0.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:attack_speed",amount:-3.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable", \
      "minecraft:attribute_modifiers" \
    ] \
  } \
]
# Steak x64
give @s minecraft:cooked_beef 64

# Give the player the Ender Eye ability if the ender portal exists.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] as @s at @s run function ogvz:give/other/ender_eye

# Give the player the Suicide Pill.
execute as @s at @s run function ogvz:give/hidden/suicide_pill_slot_0

# Give the player the punish tag and set a timer for it's removal.
tag @s add ogvz.zombie.punish
scoreboard players set @s ogvz.zombie.punish_timer.ticks 600
