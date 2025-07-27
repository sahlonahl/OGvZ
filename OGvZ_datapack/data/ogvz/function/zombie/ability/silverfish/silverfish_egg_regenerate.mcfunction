#> Description: Regenerate all silverfish eggs after a warmup.

# Decrement the warmup timer scoreboard.
scoreboard players remove @s ogvz.silverfish.silverfish_egg.warmup.ticks 1

# Regenerate all silverfish eggs if the warmup timer has finished.
scoreboard players set @s[scores={ogvz.silverfish.silverfish_egg.warmup.ticks=..0}] ogvz.silverfish.silverfish_egg.count 10
