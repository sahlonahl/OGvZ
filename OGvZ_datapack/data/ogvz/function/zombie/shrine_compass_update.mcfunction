#> updates the shrine locator compass to point at the shrine
# called by: shrine_compass
# separated out due to how datapack macros work
# macro of the form: {x:"",z:""}

$item modify entity @s hotbar.8 [{\
    "function":"set_components","components":{\
        "minecraft:lodestone_tracker":{\
            "tracked":false,\
            "target":{\
                "dimension":"overworld",\
                "pos":[$(x),0,$(z)]\
            }\
        }\
    }\
}]

#$tellraw @a "locator compass should be updated with data: $(x) , $(z)"
