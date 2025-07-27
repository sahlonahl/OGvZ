#> Description: Gives the dwarven guard spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2012}, \
  minecraft:item_model="ogvz:disc_dwarven_guard", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Dwarven Guard",color:"blue"}, \
  minecraft:lore=[ \
    {text:"Slayer of the Elder Guardian.",color:"blue"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
