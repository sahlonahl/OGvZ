#> Description: Turns the player into the alchemist dwarf.

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
tag @s add ogvz.dwarf.class.alchemist
tag @s add ogvz.mana

# Put the player on the alchemist dwarf team.
team join d3ALCHEMIST @s

### Give the player all the alchemist items.
# Summoning Book
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3004}, \
  minecraft:item_model="ogvz:summoning_book_alchemist", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Summoning Book",color:"green"}, \
  minecraft:lore=[ \
    {text:"Conjures magic potions.",color:"blue"}, \
    {text:"Requires 3 Mundane Potions",italic:false,color:"red"}, \
    {text:"Requires 30 mana",italic:false,color:"red"}, \
    {text:"Active Item",italic:false,color:"green"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Water Wand
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3105}, \
  minecraft:item_model="ogvz:water_wand", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Water Wand",color:"aqua"}, \
  minecraft:lore=[ \
    {text:"Fills cauldrons with water.",color:"blue"}, \
    {text:"Active Item",italic:false,color:"green"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Dark Prismarine x128
give @s minecraft:dark_prismarine 64
give @s minecraft:dark_prismarine 64
# Brewing Stand x2
give @s minecraft:brewing_stand 2
# Cauldron x1
give @s minecraft:cauldron 1
# Chest x4
give @s minecraft:chest 4
# Oak Sign x3
give @s minecraft:oak_sign 3
# Glass Bottle x12
give @s minecraft:glass_bottle[ \
  minecraft:lore=[ \
    {text:"Give to the alchemist.",color:"blue"}, \
    {text:"Fill with water then place in",color:"blue"}, \
    {text:"brewing stand.",color:"blue"} \
  ] \
] 12
# Redstone Dust x4
give @s minecraft:redstone[ \
  minecraft:lore=[ \
    {text:"Share with alchemist.",color:"blue"}, \
    {text:"Craft into clocks.",color:"blue"}, \
    {text:"Use as brewing ingredient.",color:"blue"} \
  ] \
] 4
# Blaze Powder x2
give @s minecraft:blaze_powder[ \
  minecraft:lore=[ \
    {text:"Give to the alchemist.",color:"blue"}, \
    {text:"Use to fuel the brewing stand.",color:"blue"} \
  ] \
] 2
# Legendary Book
execute as @s at @s run function ogvz:give/other/legendary_book

# Display a message on how to play as the alchemist.
tellraw @s [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"You are an ",color:"yellow"}, \
  {text:"Alchemist",bold:true,color:"blue"}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Your job is to make ",color:"yellow"}, \
  {text:"Magic Potions",color:"gold"}, \
  {text:" for the dwarves.\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Begin by brewing ",color:"yellow"}, \
  {text:"Redstone Dust",color:"gold"}, \
  {text:" into ",color:"yellow"}, \
  {text:"Water Bottles",color:"gold"}, \
  {text:" to\n",color:"yellow"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {text:"create ",color:"yellow"}, \
  {text:"Mundane Potions",color:"gold"}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"You can get more ",color:"yellow"}, \
  {text:"Glass Bottles",color:"gold"}, \
  {text:" from the ",color:"yellow"}, \
  {text:"Baker",color:"blue"}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"You can get more ",color:"yellow"}, \
  {text:"Redstone Dust",color:"gold"}, \
  {text:" from the ",color:"yellow"}, \
  {text:"Blacksmith",color:"blue"}, \
  {text:".",color:"yellow"} \
]

# Play a sound and create particles.
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

# Display a message about the selected doom event.
function ogvz:misc/doom_event_message
