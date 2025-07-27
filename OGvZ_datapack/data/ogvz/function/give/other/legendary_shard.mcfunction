#> Description: Gives the legendary shard to the player.

give @s minecraft:poisonous_potato[ \
  minecraft:custom_data={legendary_shard:1}, \
  minecraft:item_name={text:"Legendary Shard",color:"gold"}, \
  minecraft:item_model="ogvz:legendary_shard", \
  minecraft:enchantment_glint_override=true, \
  !minecraft:food, \
  !minecraft:consumable \
]
