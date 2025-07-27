#> Description: Gives the rulebook to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:9004,undroppable:1}, \
  minecraft:item_name={text:"Rulebook",color:"white"}, \
  minecraft:item_model="ogvz:rulebook", \
  minecraft:lore=[{text:"Right-click to open.",color:"blue"}], \
  minecraft:damage_resistant={types:"#minecraft:is_fire"}, \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
