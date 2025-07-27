#> Description: Macro to deal bonus damage type damage to a player tagged with temp.victim caused by a player tagged by temp.attacker.
#> Input: (amount) of damage to be dealt to a player.
#> Output: NULL

$damage @n[tag=temp.victim] $(amount) ogvz:bonus_damage by @n[tag=temp.attacker]
