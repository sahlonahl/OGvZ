#> Description: Turns the player into the spider.

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
tag @s add ogvz.zombie.class.spider

# Multiply movement speed by 1.6, increase jump strength by 0.5 and increase safe fall distance by 12 using attributes.
attribute @s minecraft:movement_speed modifier add ogvz.spider.movement_speed 0.6 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ogvz.spider.jump_strength 0.5 add_value
attribute @s minecraft:safe_fall_distance modifier add ogvz.spider.safe_fall_distance 12.0 add_value

# Put the player on the spider zombie team.
team join z2SPIDER @s

### Equip the player with spider armor (leather tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Spider Head",color:"aqua"}, \
  minecraft:item_model="ogvz:spider_head", \
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
  minecraft:item_name={text:"Spider Chestplate"}, \
  minecraft:dyed_color=4011053, \
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
  minecraft:item_name={text:"Spider Leggings"}, \
  minecraft:dyed_color=3287846, \
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
  minecraft:item_name={text:"Spider Boots"}, \
  minecraft:dyed_color=2498587, \
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

### Give the player all the spider items.
# Spider Eye
give @s minecraft:spider_eye[ \
  minecraft:lore=[ \
    {text:" "}, \
    {text:"Poison Aspect",color:"blue",italic:false,underlined:true}, \
    {text:"Attacks inflict poison.",color:"blue"}, \
    {text:"Enchantment",color:"green",italic:false}, \
    {text:" "}, \
    {text:"Blinding",color:"blue",italic:false,underlined:true}, \
    {text:"Attacks inflict blidness.",color:"blue"}, \
    {text:"Enchantment",color:"green",italic:false} \
  ], \
  minecraft:enchantments={ \
    "ogvz:poison_aspect":2, \
    "ogvz:blinding":1 \
  }, \
  !minecraft:consumable \
]
# Web
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6210}, \
  minecraft:item_model="ogvz:web", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Web",color:"gray"}, \
  minecraft:lore=[ \
    {text:"Shoot a wide web, slowing down",color:"blue"}, \
    {text:"anyone caught in it.",color:"blue"}, \
    {text:"15 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Web Cleaner
give @s minecraft:stick[ \
  minecraft:item_model="ogvz:web_cleaner", \
  minecraft:item_name={text:"Web Cleaner",color:"white"}, \
  minecraft:max_stack_size=1, \
  minecraft:tool={ \
    default_mining_speed:1, \
    rules:[{speed:120,correct_for_drops:true,blocks:"cobweb"}] \
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
