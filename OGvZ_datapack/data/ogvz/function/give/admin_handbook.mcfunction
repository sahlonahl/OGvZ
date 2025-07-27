#> Description: Gives the admin handbook to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:1000}, \
  minecraft:item_name={text:"Admin Handbook",color:"white"}, \
  minecraft:item_model="ogvz:admin_handbook", \
  minecraft:lore=[{text:"Right-click to open.",color:"blue"}], \
  minecraft:damage_resistant={types:"#minecraft:is_fire"}, \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
