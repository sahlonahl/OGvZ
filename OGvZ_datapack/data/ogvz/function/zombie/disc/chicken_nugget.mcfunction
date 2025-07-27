#> Description: Turns the player into the chicken nugget.

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
tag @s add ogvz.zombie.class.chicken_nugget

# Multiply movement speed by 1.4, increase jump strength by 0.2 and nullify fall damage using attributes.
attribute @s minecraft:movement_speed modifier add ogvz.chicken_nugget.movement_speed 0.4 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ogvz.chicken_nugget.jump_strength 0.2 add_value
attribute @s minecraft:fall_damage_multiplier modifier add ogvz.chicken_nugget.fall_damage_multiplier -1.0 add_multiplied_total

# Put the player on the chicken nugget zombie team.
team join z3CHICKEN_NUGGET @s

### Equip the player with chicken nugget armor (leather tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Chicken Nugget Head",color:"aqua"}, \
  minecraft:item_model="ogvz:chicken_nugget_head", \
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
  minecraft:item_name={text:"Chicken Nugget Chestplate"}, \
  minecraft:dyed_color=16777215, \
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
  minecraft:item_name={text:"Chicken Nugget Leggings"}, \
  minecraft:dyed_color=14728041, \
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
  minecraft:item_name={text:"Chicken Nugget Boots"}, \
  minecraft:dyed_color=16573808, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1, \
    "ogvz:midair_jump":3 \
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

### Give the player all the chicken nugget items.
# Eggsplosive Egg
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6310}, \
  minecraft:item_model="ogvz:eggsplosive_egg", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Eggsplosive Egg",color:"gray"}, \
  minecraft:lore=[ \
    {text:"Shoot an egg which explodes on",color:"blue"}, \
    {text:"impact.",color:"blue"}, \
    {text:"3 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Flutter
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={ \
    active_id:6311, \
    passive_id:6310, \
    disabled:0 \
  }, \
  minecraft:item_model="ogvz:flutter", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Flutter",color:"gray"}, \
  minecraft:lore=[ \
    {text:"Grants permanent slow falling.",color:"blue"}, \
    {text:"Sneak to temporary remove the",color:"blue"}, \
    {text:"effect.",color:"blue"}, \
    {text:"Togglable",color:"blue",italic:false}, \
    {text:"Passive Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Cooked Chicken x64
give @s minecraft:cooked_chicken[ \
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
