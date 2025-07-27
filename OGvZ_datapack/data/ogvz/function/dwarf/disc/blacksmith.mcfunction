#> Description: Turns the player into the blacksmith dwarf.

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
tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class
tag @s add ogvz.dwarf.class.blacksmith
tag @s add ogvz.mana

# Put the player on the blacksmith dwarf team.
team join d3BLACKSMITH @s

### Give the player all the blacksmith items.
# Summoning Book
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3001}, \
  minecraft:item_model="ogvz:summoning_book_blacksmith", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Summoning Book",color:"green"}, \
  minecraft:lore=[ \
    {text:"Conjures weapons and tools.",color:"blue"}, \
    {text:"Requires 4 Clocks",italic:false,color:"red"}, \
    {text:"Requires 30 mana",italic:false,color:"red"}, \
    {text:"Active Item",italic:false,color:"green"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Iron Paxel
give @s minecraft:iron_pickaxe[ \
  minecraft:item_name="Iron Paxel", \
  minecraft:item_model="ogvz:iron_paxel", \
  minecraft:lore=[ \
    {text:"Multi-Tool",color:"gray",italic:false} \
  ], \
  minecraft:attribute_modifiers=[ \
    { \
      id:"minecraft:base_attack_damage", \
      type:"minecraft:attack_damage", \
      amount:3.0, \
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
      amount:0.0, \
      operation:"add_value", \
      slot:"mainhand", \
      display:{ \
        type:"override", \
        value:{text:" 3 Attack Reach",color:"dark_green"} \
      } \
    } \
  ], \
  minecraft:weapon={ \
    item_damage_per_attack:1 \
  }, \
  minecraft:tool={ \
    damage_per_block:1, \
    rules:[ \
      { \
        blocks:"#minecraft:incorrect_for_diamond_tool", \
        correct_for_drops:false \
      }, \
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
        blocks:"#minecraft:mineable/pickaxe", \
        correct_for_drops:true, \
        speed:6.0 \
      }, \
      { \
        blocks:"#minecraft:mineable/shovel", \
        correct_for_drops:true, \
        speed:6.0 \
      }, \
      { \
        blocks:"#minecraft:mineable/axe", \
        correct_for_drops:true, \
        speed:6.0 \
      }, \
      { \
        blocks:"#minecraft:mineable/hoe", \
        correct_for_drops:true, \
        speed:6.0 \
      }, \
      { \
        blocks:"#minecraft:sword_efficient", \
        speed:1.5 \
      } \
    ] \
  } \
]
# Flint and Steel
give @s minecraft:flint_and_steel
# Nether Bricks x128
give @s minecraft:nether_bricks 64
give @s minecraft:nether_bricks 64
# Blast Furnace x4
give @s minecraft:blast_furnace 4
# Crafting Table x1
give @s minecraft:crafting_table 1
# Netherrack x1
give @s minecraft:netherrack 1
# Chest x2
give @s minecraft:chest 2
# Oak Sign x2
give @s minecraft:oak_sign 3
# Gold Ore x64
give @s minecraft:gold_ore[ \
  minecraft:lore=[ \
    {text:"Give to the blacksmith.",color:"blue"}, \
    {text:"Smelt into gold ingots.",color:"blue"} \
  ] \
] 64
# Redstone Ore x4
give @s minecraft:redstone_ore[ \
  minecraft:lore=[ \
    {text:"Mine to get redstone.",color:"blue"} \
  ] \
] 4
# Coal x8
give @s minecraft:coal[ \
  minecraft:lore=[ \
    {text:"Share with baker.",color:"blue"}, \
    {text:"Use to fuel the furnace.",color:"blue"} \
  ] \
] 8
# Legendary Book
execute as @s at @s run function ogvz:give/other/legendary_book

# Display a message on how to play as the blacksmith.
tellraw @s [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"You are a ",color:"yellow"}, \
  {text:"Blacksmith",bold:true,color:"blue"}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Your job is to make ",color:"yellow"}, \
  {text:"Weapons",color:"gold"}, \
  {text:" and ",color:"yellow"}, \
  {text:"Tools",color:"gold"}, \
  {text:" for the dwarves.\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Begin by smelting ",color:"yellow"}, \
  {text:"Gold Ore",color:"gold"}, \
  {text:" into ",color:"yellow"}, \
  {text:"Gold Ingots",color:"gold"}, \
  {text:", then\n",color:"yellow"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {text:"combine it with ",color:"yellow"}, \
  {text:"Redstone Dust",color:"gold"}, \
  {text:" to craft ",color:"yellow"}, \
  {text:"Clocks",color:"gold"}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"You can get more ",color:"yellow"}, \
  {text:"Gold Ore",color:"gold"}, \
  {text:" from the ",color:"yellow"}, \
  {text:"Tailor",color:"blue"}, \
  {text:".",color:"yellow"} \
]

# Play a sound and create particles.
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

# Display a message about the selected doom event.
function ogvz:misc/doom_event_message
