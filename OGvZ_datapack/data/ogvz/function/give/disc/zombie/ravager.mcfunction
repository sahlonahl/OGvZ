#> Description: Gives the ravager spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2172}, \
  minecraft:item_model="ogvz:disc_ravager", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Ravager",color:"light_purple"}, \
  minecraft:lore=[ \
    {text:"TODO: Add Class Description!",color:"blue"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
