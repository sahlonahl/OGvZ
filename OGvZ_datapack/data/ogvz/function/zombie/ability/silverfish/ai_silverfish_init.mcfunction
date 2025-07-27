#> Description: Initializes the ai silverfish.

# Put the ai silverfish on the silverfish zombie team.
team join z4SILVERFISH @s

# Set the ai silverfish lifetime to 60 seconds.
scoreboard players set @s ogvz.silverfish.lifetime.ticks 1200

# Tag the ai silverfish as processed.
tag @s add ogvz.silverfish.processed
