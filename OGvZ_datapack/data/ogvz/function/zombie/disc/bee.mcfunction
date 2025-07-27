#> Description: Turns the player into the bee.

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
tag @s add ogvz.zombie.class.bee

# Decrease health by 2 hearts and nullify fall damage using attributes.
attribute @s minecraft:max_health modifier add ogvz.bee.max_health -4 add_value
attribute @s minecraft:fall_damage_multiplier modifier add ogvz.bee.fall_damage_multiplier -1.0 add_multiplied_total

# Put the player on the bee zombie team.
team join z3BEE @s

### Equip the player with bee armor (leather tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Bee Head",color:"aqua"}, \
  minecraft:item_model="ogvz:bee_head", \
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
  minecraft:item_name={text:"Bee Chestplate"}, \
  minecraft:dyed_color=15582019, \
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
  minecraft:item_name={text:"Bee Leggings"}, \
  minecraft:dyed_color=6238757, \
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
  minecraft:item_name={text:"Bee Boots"}, \
  minecraft:dyed_color=15582019, \
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

### Give the player all the bee items.
# Honey
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6370}, \
  minecraft:item_model="ogvz:honey", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Honey",color:"yellow"}, \
  minecraft:lore=[ \
    {text:"Shoots a healing beam.",color:"blue"}, \
    {text:"10 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Pollen Bomb
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6371}, \
  minecraft:item_model="ogvz:pollen_bomb", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Pollen Bomb",color:"yellow"}, \
  minecraft:lore=[ \
    {text:"Throw a bomb that explodes into",color:"blue"}, \
    {text:"a healing zone for zombies.",color:"blue"}, \
    {text:"20 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Hover
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={ \
    active_id:6372, \
    passive_id:6370, \
    disabled:1 \
  }, \
  minecraft:item_model="ogvz:hover_disabled", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Hover",color:"aqua"}, \
  minecraft:lore=[ \
    {text:"Lets you hover in the air.",color:"blue"}, \
    {text:"Hold jump to ascend and sneak",color:"blue"}, \
    {text:"to descent.",color:"blue"}, \
    {text:"Can only be toggled when on",color:"blue"}, \
    {text:"ground.",color:"blue"}, \
    {text:"Togglable",color:"blue",italic:false}, \
    {text:"Passive Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Honey Bottle x64
give @s minecraft:honey_bottle[ \
  !minecraft:use_remainder, \
  minecraft:max_stack_size=64, \
  minecraft:consumable={ \
    animation:"drink", \
    sound:"minecraft:item.honey_bottle.drink", \
    has_consume_particles:false, \
    on_consume_effects:[ \
      { \
        type:"minecraft:remove_effects", \
        effects:"minecraft:poison" \
      } \
    ] \
  }, \
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
