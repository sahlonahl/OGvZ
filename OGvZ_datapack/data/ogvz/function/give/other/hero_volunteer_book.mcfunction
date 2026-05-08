#> Description: Gives the volunteer book to the player.
#> called by:

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:9006}, \
  minecraft:item_name={text:"Hero Volunteer Book",color:"white"}, \
  minecraft:item_model="ogvz:volunteer_book", \
  minecraft:lore=[{text:"Right-click to open.",color:"blue"}], \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
