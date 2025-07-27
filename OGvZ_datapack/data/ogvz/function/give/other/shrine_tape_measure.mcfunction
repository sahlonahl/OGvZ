#> Description: Gives the shrine tape measure to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={passive_id:1000}, \
  minecraft:item_name={text:"Shrine Tape Measure",color:"gold"}, \
  minecraft:item_model="ogvz:shrine_tape_measure", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
