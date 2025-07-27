#> Description: Turns the player into the drowned.

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
tag @s add ogvz.zombie.class.zombie_variant
tag @s add ogvz.zombie.class.zombie_variant.drowned

# Give the player the aquatic tag.
tag @s add ogvz.zombie.aquatic

# Put the player on the drowned zombie team.
team join z0DROWNED @s

### Equip the player with drowned armor (iron tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Drowned Head",color:"aqua"}, \
  minecraft:item_model="ogvz:drowned_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
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
  minecraft:item_name={text:"Drowned Chestplate"}, \
  minecraft:dyed_color=6571569, \
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
  minecraft:item_name={text:"Drowned Leggings"}, \
  minecraft:dyed_color=5782827, \
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
  minecraft:item_name={text:"Drowned Boots"}, \
  minecraft:dyed_color=5670014, \
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

### Give the player all the drowned items.
# Shield (9th hotbar slot)
item replace entity @s hotbar.8 with minecraft:shield[ \
  minecraft:item_name="Light Shield", \
  minecraft:lore=[ \
    {text:"Instant Blocking",color:"gray",italic:false} \
  ], \
  minecraft:unbreakable={}, \
  minecraft:blocks_attacks={ \
    block_delay_seconds:0, \
    damage_reductions:[ \
      { \
        type:"#ogvz:is_physical", \
        base:0, \
        factor:1.0 \
      }, \
      { \
        type:"#minecraft:is_explosion", \
        base:0, \
        factor:0.35 \
      } \
    ], \
    item_damage:{ \
      threshold:3.0, \
      base:0.0, \
      factor:1.0 \
    }, \
    block_sound:"minecraft:item.shield.block", \
    disabled_sound:"minecraft:item.shield.break", \
    bypassed_by:"#minecraft:bypasses_shield" \
  } \
]

# Worn Trident
give @s minecraft:trident[ \
  minecraft:item_name="Worn Trident", \
  minecraft:enchantments={"minecraft:riptide":1}, \
  minecraft:lore=[ \
    {text:"Disables Shields",color:"gray",italic:false} \
  ], \
  minecraft:rarity="common", \
  minecraft:attribute_modifiers=[ \
    { \
      id:"minecraft:base_attack_damage", \
      type:"minecraft:attack_damage", \
      amount:6.0, \
      operation:"add_value", \
      slot:"mainhand" \
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
      amount:0.5, \
      operation:"add_value", \
      slot:"mainhand", \
      display:{ \
        type:"override", \
        value:{text:" 3.5 Attack Reach",color:"dark_green"} \
      } \
    } \
  ], \
  minecraft:unbreakable={}, \
  minecraft:max_damage=1561, \
  minecraft:enchantable={value:10}, \
  minecraft:weapon={ \
    item_damage_per_attack:1, \
    disable_blocking_for_seconds:3.5 \
  }, \
  minecraft:tool={ \
    can_destroy_blocks_in_creative:false, \
    damage_per_block:1, \
    rules:[ \
      { \
        blocks:"minecraft:cobweb", \
        correct_for_drops:true, \
        speed:15.0 \
      } \
    ] \
  } \
]
# Steak x64
give @s minecraft:cooked_beef 64
# Undying Bond
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={passive_id:6000}, \
  minecraft:item_model="ogvz:undying_bond", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Undying Bond",color:"red"}, \
  minecraft:lore=[ \
    {text:"Gain regeneration when near",color:"blue"}, \
    {text:"another zombie variant.",color:"blue"}, \
    {text:"Passive Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Sharing Grace
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={passive_id:6900}, \
  minecraft:item_model="ogvz:sharing_grace", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Sharing Grace",color:"aqua"}, \
  minecraft:lore=[ \
    {text:"Non-aquatic zombies near you",color:"blue"}, \
    {text:"gain dolphin's grace.",color:"blue"}, \
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
