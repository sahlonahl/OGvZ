#> Description: Gives the spider spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2121}, \
  minecraft:item_model="ogvz:disc_spider", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Spider",color:"red"}, \
  minecraft:lore=[ \
    {text:"Traps dwarves in webs, slowing",color:"blue"}, \
    {text:"them down.",color:"blue"}, \
    [ \
      {text:"ATK: ",color:"red",italic:false}, \
      {text:"⭐",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐",color:"gray",italic:false} \
    ], \
    [ \
      {text:"DEF: ",color:"red",italic:false}, \
      {text:"⭐⭐",color:"#FCA854",italic:false}, \
      {text:"⭐⭐⭐",color:"gray",italic:false} \
    ], \
    [ \
      {text:"MOV: ",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐",color:"green",italic:false}, \
      {text:"⭐",color:"gray",italic:false} \
    ], \
    [ \
      {text:"UTL: ",color:"red",italic:false}, \
      {text:"⭐⭐⭐",color:"yellow",italic:false}, \
      {text:"⭐⭐",color:"gray",italic:false} \
    ], \
    {text:"Disruption Class",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
