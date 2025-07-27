#> Description: Gives the chillager spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2133}, \
  minecraft:item_model="ogvz:disc_chillager", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Chillager",color:"dark_red"}, \
  minecraft:lore=[ \
    {text:"Goes invisible to infiltrate the",color:"blue"}, \
    {text:"dwarven keep. Backstabs dwarves",color:"blue"}, \
    {text:"to chill them.",color:"blue"}, \
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
      {text:"⭐⭐⭐⭐",color:"green",italic:false}, \
      {text:"⭐",color:"gray",italic:false} \
    ], \
    {text:"Disruption Class",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
