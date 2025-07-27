#> Description: Gives all setup tools to the player.

# Lobby Tool
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:1001}, \
  minecraft:item_name={text:"Lobby Tool",color:"green"}, \
  minecraft:item_model="ogvz:lobby_tool", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

# Shrine Tool
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:1002}, \
  minecraft:item_name={text:"Shrine Tool",color:"gold"}, \
  minecraft:item_model="ogvz:shrine_tool", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

# Zombie Spawn Tool
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:1003}, \
  minecraft:item_name={text:"Zombie Spawn Tool",color:"red"}, \
  minecraft:item_model="ogvz:zombie_spawn_tool", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

# Boss Spawn Tool
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:1004}, \
  minecraft:item_name={text:"Boss Spawn Tool",color:"light_purple"}, \
  minecraft:item_model="ogvz:boss_spawn_tool", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

# Start Game (tool)
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:1005}, \
  minecraft:item_name={text:"Start Game",color:"white"}, \
  minecraft:item_model="ogvz:start_game", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

# Shrine Tape Measure
execute as @s at @s run function ogvz:give/other/shrine_tape_measure
