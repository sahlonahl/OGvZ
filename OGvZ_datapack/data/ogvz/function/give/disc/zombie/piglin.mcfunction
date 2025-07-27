#> Description: Gives the piglin spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2140}, \
  minecraft:item_model="ogvz:disc_piglin", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Piglin",color:"dark_red"}, \
  minecraft:lore=[ \
    {text:"Eats dwarven keep walls to",color:"blue"}, \
    {text:"evolve into a hoglin.",color:"blue"}, \
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
      {text:"⭐⭐⭐",color:"yellow",italic:false}, \
      {text:"⭐⭐",color:"gray",italic:false} \
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
