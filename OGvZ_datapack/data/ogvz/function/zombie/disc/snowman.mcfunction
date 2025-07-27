#> Description: Turns the player into the snowman.

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
tag @s add ogvz.zombie.class.snowman

# Give the player the ice element tag.
tag @s add ogvz.zombie.element.ice

# Put the player on the snowman zombie team.
team join z3SNOWMAN @s

### Equip the player with snowman armor (leather tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Carved Pumpkin",color:"aqua"}, \
  minecraft:item_model="ogvz:carved_pumpkin", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1, \
    "ogvz:ice_immunity":1 \
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
  minecraft:item_name={text:"Snowman Chestplate"}, \
  minecraft:dyed_color=15663103, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1, \
    "ogvz:ice_immunity":1 \
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
  minecraft:item_name={text:"Snowman Leggings"}, \
  minecraft:dyed_color=16777215, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1, \
    "ogvz:ice_immunity":1 \
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
  minecraft:item_name={text:"Snowman Boots"}, \
  minecraft:dyed_color=15663103, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:frost_walker":2, \
    "minecraft:binding_curse":1, \
    "ogvz:ice_immunity":1 \
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

### Give the player all the snowman items.
# Snowball Barrage
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6350}, \
  minecraft:item_model="ogvz:snowball_barrage", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Snowball Barrage",color:"aqua"}, \
  minecraft:lore=[ \
    {text:"Lob a barrage of damaging",color:"blue"}, \
    {text:"snowballs.",color:"blue"}, \
    {text:"The power of your throw is",color:"blue"}, \
    {text:"determined by how high you are",color:"blue"}, \
    {text:"looking.",color:"blue"}, \
    {text:"8 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Freeze
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6351}, \
  minecraft:item_model="ogvz:freeze", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Freeze",color:"aqua"}, \
  minecraft:lore=[ \
    {text:"Shoot a freezing ice beam.",color:"blue"}, \
    {text:"30 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
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
