#> Description: Turns the player into the piglin.

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
tag @s add ogvz.zombie.class.piglin

# Multiply movement speed by 1.2 using an attribute.
attribute @s minecraft:movement_speed modifier add ogvz.piglin.movement_speed 0.2 add_multiplied_total

# Put the player on the piglin zombie team.
team join z4PIGLIN @s

### Equip the player with piglin armor (leather tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Piglin Head",color:"aqua"}, \
  minecraft:item_model="ogvz:piglin_head", \
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
  minecraft:item_name={text:"Piglin Chestplate"}, \
  minecraft:dyed_color=7026980, \
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
  minecraft:item_name={text:"Piglin Leggings"}, \
  minecraft:dyed_color=8670003, \
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
  minecraft:item_name={text:"Piglin Boots"}, \
  minecraft:dyed_color=13997434, \
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

### Give the player all the piglin items.
# Golden Pickaxe
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
  minecraft:unbreakable={}, \
  minecraft:can_break=[ \
    {blocks:"#ogvz:dwarf_blocks"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:can_break" \
    ] \
  } \
]
# Steak x64
give @s minecraft:cooked_beef 64
# Evolution
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={passive_id:6400}, \
  minecraft:item_model="ogvz:evolution", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Evolution",color:"aqua"}, \
  minecraft:lore=[ \
    {text:"You can gain experience by using",color:"blue"}, \
    {text:"the golden pickaxe when near the",color:"blue"}, \
    {text:"shrine.",color:"blue"}, \
    {text:"After gaining enough experience,",color:"blue"}, \
    {text:"you will evolve into a stronger",color:"blue"}, \
    {text:"form.",color:"blue"}, \
    {text:"When the arrow next to your",color:"blue"}, \
    {text:"experience bar becomes green,",color:"blue"}, \
    {text:"that means you are close enough",color:"blue"}, \
    {text:"to the shrine to gain ",color:"blue"}, \
    {text:"experience.",color:"blue"}, \
    {text:"Passive Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

# Give the player the Ender Eye ability if the ender portal exists.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] as @s at @s run function ogvz:give/other/ender_eye

# Give the player the Suicide Pill.
execute as @s at @s run function ogvz:give/hidden/suicide_pill_slot_0

# Give the player the punish tag and set a timer for it's removal.
tag @s add ogvz.zombie.punish
scoreboard players set @s ogvz.zombie.punish_timer.ticks 600
