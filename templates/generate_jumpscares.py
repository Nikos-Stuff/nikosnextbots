original_list = [
    "metal_pipe", "toob", "crying_sans", "pbj", "smile_ghost", "idiot", "ohl", "meem", "nope",
    "noob", "observer", "benny", "racoon", "fazmug", "donot", "bear5", "blabber",
    "chilly", "smurf_cat", "intruder", "jet", "darkness", "bear", "litlle_gerry",
    "winrar", "fan", "boykisser", "subspace_tripmine", "nothing", "nuke", "flash", "osc",
    "cb", "dragon", "carter", "shroom", "grumbo", "giggle", "rei", "ico", "leorio",
    "mochu", "jack", "unfortunate", "lolguy", "smiler", "boba", "squewe", "ccat",
    "andy", "inhabitant", "leoret", "dread", "catnap"
]

unicode_chars = [
    "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
    "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
    "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""
]

for item, char in zip(original_list, unicode_chars):
    print(f"#> {item}")
    print(f"title @a[tag={item}_d] times 0 50 50")
    print(f'execute as @a[tag={item}_d] if score @s nn_jumpscare matches 1 run title @s title {{"text":"  {char}"}}')
    print(f'execute as @a[tag={item}_d] if score @s nn_jumpscare matches 2 run title @s title {{"text":"{char}"}}')
    print(f'execute as @a[tag={item}_d] if score @s nn_jumpscare matches 3 run title @s title {{"text":" {char} "}}')
    print(f'execute as @a[tag={item}_d] if score @s nn_jumpscare matches 3 run scoreboard players add @s nn_jumpscare_run 10')
    print(f'execute as @a[tag={item}_d] if score @s nn_jumpscare matches 3 run title @s title {{"text":" {char}","color":"red"}}')
    print()
