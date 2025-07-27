#> Description: Gives the legendary book to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3006}, \
  minecraft:item_model="ogvz:legendary_book", \
  minecraft:enchantment_glint_override=true, \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Legendary Book",color:"gold"}, \
  minecraft:lore=[ \
    [ \
      {text:"Conjures ",color:"blue"}, \
      {text:"Legendary",bold:true,color:"gold"}, \
      {text:" items.",color:"blue"} \
    ], \
    {text:"Requires 5 Legendary Shards",italic:false,color:"red"}, \
    {text:"Single-use",italic:false,color:"red"}, \
    {text:"Active Item",italic:false,color:"green"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
