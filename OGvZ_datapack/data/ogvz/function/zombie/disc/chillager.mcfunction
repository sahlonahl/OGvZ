#> Description: Turns the player into the chillager.

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
tag @s add ogvz.zombie.class.chillager

# Give the player the ice element tag.
tag @s add ogvz.zombie.element.ice

# Multiply movement speed by 1.4, increase jump strength by 0.3 and increase safe fall distance by 6 using attributes.
attribute @s minecraft:movement_speed modifier add ogvz.chillager.movement_speed 0.4 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ogvz.chillager.jump_strength 0.3 add_value
attribute @s minecraft:safe_fall_distance modifier add ogvz.chillager.safe_fall_distance 6.0 add_value

# Fill the invisibility bar.
scoreboard players set @s ogvz.chillager.invisibility.duration 1200

# Put the player on the chillager zombie team.
team join z3CHILLAGER @s

### Equip the player with chillager armor (leather tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Chillager Head",color:"aqua"}, \
  minecraft:item_model="ogvz:chillager_head", \
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
  minecraft:item_name={text:"Chillager Chestplate"}, \
  minecraft:dyed_color=1456243, \
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
  minecraft:item_name={text:"Chillager Leggings"}, \
  minecraft:dyed_color=1456243, \
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
  minecraft:item_name={text:"Chillager Boots"}, \
  minecraft:dyed_color=1456243, \
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

### Give the player all the chillager items.
# Shiver
give @s minecraft:music_disc_13[ \
  !minecraft:jukebox_playable, \
  minecraft:item_name={text:"Shiver",color:"aqua"}, \
  minecraft:item_model="ogvz:shiver", \
  minecraft:enchantments={"ogvz:chilling_backstab":1}, \
  minecraft:lore=[ \
    {text:" "}, \
    {text:"Chilling Backstab",color:"blue",italic:false,underlined:true}, \
    {text:"Attacks from behind will inflict",color:"blue"}, \
    {text:"slowness.",color:"blue"}, \
    {text:"Enchantment",color:"green",italic:false} \
  ], \
  minecraft:unbreakable={}, \
  minecraft:rarity="common", \
  minecraft:attribute_modifiers=[ \
    { \
      id:"minecraft:base_attack_damage", \
      type:"minecraft:attack_damage", \
      amount:0.0, \
      operation:"add_value", \
      slot:"mainhand" \
    }, \
    { \
      id:"minecraft:base_attack_speed", \
      type:"minecraft:attack_speed", \
      amount:19996.0, \
      operation:"add_value", \
      slot:"mainhand", \
      display:{ \
        type:"override", \
        value:{text:" ∞ Attack Speed",color:"dark_green"} \
      } \
    }, \
    { \
      id:"minecraft:entity_interaction_range.mainhand", \
      type:"minecraft:entity_interaction_range", \
      amount:-0.5, \
      operation:"add_value", \
      slot:"mainhand", \
      display:{ \
        type:"override", \
        value:{text:" 2.5 Attack Reach",color:"dark_green"} \
      } \
    } \
  ], \
  minecraft:max_damage=250, \
  minecraft:damage=0, \
  minecraft:repairable={items:"minecraft:ice"}, \
  minecraft:enchantable={value:14}, \
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
# Invisibility
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6320}, \
  minecraft:item_model="ogvz:invisibility", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Invisibility",color:"aqua"}, \
  minecraft:lore=[ \
    {text:"Become invisible.",color:"blue"}, \
    {text:"Your invisibility bar will drain",color:"blue"}, \
    {text:"while invisible and regenerate",color:"blue"}, \
    {text:"while visible.",color:"blue"}, \
    {text:"Fully draining your invisibility",color:"blue"}, \
    {text:"bar will cancel your",color:"blue"}, \
    {text:"invisibility.",color:"blue"}, \
    {text:"Taking or dealing damage will",color:"blue"}, \
    {text:"cancel the invisibility.",color:"blue"}, \
    {text:"You can manually cancel the",color:"blue"}, \
    {text:"invisibility by using the",color:"blue"}, \
    {text:"ability again.",color:"blue"}, \
    {text:"5 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Ice Bridge
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6321}, \
  minecraft:item_model="ogvz:ice_bridge", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Ice Bridge",color:"aqua"}, \
  minecraft:lore=[ \
    {text:"Create an ice bridge in front of",color:"blue"}, \
    {text:"your feet, facing in the",color:"blue"}, \
    {text:"direction you are looking at.",color:"blue"}, \
    {text:"The bridge will melt after a",color:"blue"}, \
    {text:"long time.",color:"blue"}, \
    {text:"20 second cooldown",color:"red",italic:false}, \
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
