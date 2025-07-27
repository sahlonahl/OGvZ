#> Description: Gives the phantom spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2135}, \
  minecraft:item_model="ogvz:disc_phantom", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Phantom",color:"dark_red"}, \
  minecraft:lore=[ \
    {text:"Flies and deals huge damage when",color:"blue"}, \
    {text:"flying at high speeds.",color:"blue"}, \
    [ \
      {text:"ATK: ",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐",color:"green",italic:false}, \
      {text:"⭐",color:"gray",italic:false} \
    ], \
    [ \
      {text:"DEF: ",color:"red",italic:false}, \
      {text:"⭐",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐",color:"gray",italic:false} \
    ], \
    [ \
      {text:"MOV: ",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐⭐",color:"aqua",italic:false}, \
      {text:"",color:"gray",italic:false} \
    ], \
    [ \
      {text:"UTL: ",color:"red",italic:false}, \
      {text:"⭐⭐⭐",color:"yellow",italic:false}, \
      {text:"⭐⭐",color:"gray",italic:false} \
    ], \
    {text:"Melee Combat Class",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
