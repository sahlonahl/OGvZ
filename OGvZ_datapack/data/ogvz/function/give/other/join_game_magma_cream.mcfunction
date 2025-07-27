#> Description: Gives the join game magma cream to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={ \
    active_id:9000, \
    undroppable:1 \
  }, \
  minecraft:item_name={text:"Join Game",color:"white"}, \
  minecraft:item_model="ogvz:join_game", \
  minecraft:lore=[{text:"Right-click to join the game!",color:"blue"}], \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
