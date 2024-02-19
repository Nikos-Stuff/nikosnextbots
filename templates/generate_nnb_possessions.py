original_list = [
    "metal_pipe", "toob", "crying_sans", "pbj", "smile_ghost", "idiot", "ohl", "meem", "nope",
    "noob", "observer", "benny", "racoon", "fazmug", "donot", "bear5", "blabber",
    "chilly", "smurf_cat", "intruder", "jet", "darkness", "bear", "litlle_gerry",
    "winrar", "fan", "boykisser", "subspace_tripmine", "nothing", "nuke", "flash", "osc",
    "cb", "dragon", "carter", "shroom", "grumbo", "giggle", "rei", "ico", "leorio",
    "mohu", "jack", "unfortunate", "lolguy", "smiler", "boba", "squewe", "ccat",
    "andy", "inhabitant", "leoret", "dread", "catnap"
]

# Generate the updated command block setup
for index, item in enumerate(original_list):
    print(f"#> ------------------ {item} | id {index + 1}\n")
    print(f"#> Detect and assign possession")
    print(f"execute at @e[type=minecraft:zombie,tag={item}_z] if entity @e[type=minecraft:snowball,distance=..2.2] run execute at @a[distance=..5.5,sort=nearest,tag=!nextbot] run scoreboard players set @p nn_possesion {index + 1}")
    print(f"execute at @e[type=minecraft:zombie,tag={item}_z] if entity @e[type=minecraft:snowball,distance=..2.2] run tag @e[type=zombie,limit=1,distance=..1.1] add controled")
    print(f"execute at @e[type=minecraft:zombie,tag={item}_z] if entity @e[type=minecraft:snowball,distance=..2.2] run kill @e[tag=controled,distance=..1.1,limit=1]")
    print(f"execute at @a[scores={{nn_possesion={index + 1}}}] run tag @p add nextbot\n")

    print("#> Reset on timeout")
    print(f"execute if entity @a[scores={{nn_possesion={index + 1}}},tag=nextbot_timeout] run function nnb_possessions:{index + 1}/{item}_end\n")

    print("#> Teleport sprite and assign tags")
    print(f"execute if entity @a[scores={{nn_possesion={index + 1}}},tag=!nextbot_timeout] run tag @a[scores={{nn_possesion={index + 1}}},tag=!nextbot_timeout] add {item}_z")
    print(f"execute at @a[tag={item}_z] run tp @e[tag={item}] ~ ~2 ~\n")

    print("#> Screen effects tag")
    print(f"tag @a[tag={item}_z] add n_nextbot\n\n\n\n")
