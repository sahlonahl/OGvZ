#> Description: Turns the player into the baker dwarf.

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
tag @s add ogvz.dwarf.class.baker
tag @s add ogvz.mana

# Put the player on the baker dwarf team.
team join d3BAKER @s

### Give the player all the baker items.
# Summoning Book
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3003}, \
  minecraft:item_model="ogvz:summoning_book_baker", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Summoning Book",color:"green"}, \
  minecraft:lore=[ \
    {text:"Conjures food.",color:"blue"}, \
    {text:"Requires 8 Clay Bricks",italic:false,color:"red"}, \
    {text:"Requires 30 mana",italic:false,color:"red"}, \
    {text:"Active Item",italic:false,color:"green"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Clay Brick Blocks x128
give @s minecraft:bricks 64
give @s minecraft:bricks 64
# Furnace x4
give @s minecraft:furnace 4
# Chest x2
give @s minecraft:chest 2
# Oak Sign x3
give @s minecraft:oak_sign 3
# Clay Ball x32
give @s minecraft:clay_ball[ \
  minecraft:lore=[ \
    {text:"Smelt into bricks.",color:"blue"} \
  ] \
] 32
# Coal x4
give @s minecraft:coal[ \
  minecraft:lore=[ \
    {text:"Share with baker.",color:"blue"}, \
    {text:"Use to fuel the furnace.",color:"blue"} \
  ] \
] 4
# Legendary Book
execute as @s at @s run function ogvz:give/other/legendary_book

# Display a message on how to play as the baker.
tellraw @s [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"You are a ",color:"yellow"}, \
  {text:"Baker",bold:true,color:"blue"}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Your job is to make ",color:"yellow"}, \
  {text:"Food",color:"gold"}, \
  {text:" for the dwarves.\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Begin by smelting ",color:"yellow"}, \
  {text:"Clay Balls",color:"gold"}, \
  {text:" into ",color:"yellow"}, \
  {text:"Clay Bricks",color:"gold"}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"You can get more ",color:"yellow"}, \
  {text:"Coal",color:"gold"}, \
  {text:" from the ",color:"yellow"}, \
  {text:"Blacksmith",color:"blue"}, \
  {text:".",color:"yellow"} \
]

# Play a sound and create particles.
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

# Display a message about the selected doom event.
function ogvz:misc/doom_event_message
