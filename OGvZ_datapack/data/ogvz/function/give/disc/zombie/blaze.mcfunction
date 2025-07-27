#> Description: Gives the blaze spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2131}, \
  minecraft:item_model="ogvz:disc_blaze", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Blaze",color:"dark_red"}, \
  minecraft:lore=[ \
    {text:"Shoots fireballs that deal high",color:"blue"}, \
    {text:"single target damage.",color:"blue"}, \
    [ \
      {text:"ATK: ",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐",color:"green",italic:false}, \
      {text:"⭐",color:"gray",italic:false} \
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
      {text:"⭐⭐",color:"#FCA854",italic:false}, \
      {text:"⭐⭐⭐",color:"gray",italic:false} \
    ], \
    {text:"Ranged Combat Class",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
