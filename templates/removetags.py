original_list = [
    "metal_pipe", "toob", "crying_sans", "pbj", "smile_ghost", "idiot", "ohl", "meem", "nope",
    "noob", "observer", "benny", "racoon", "fazmug", "donot", "bear5", "blabber",
    "chilly", "smurf_cat", "intruder", "jet", "darkness", "bear", "litlle_gerry",
    "winrar", "fan", "boykisser", "subspace_tripmine", "nothing", "nuke", "flash", "osc",
    "cb", "dragon", "carter", "shroom", "grumbo", "giggle", "rei", "ico", "leorio",
    "mohu", "jack", "unfortunate", "lolguy", "smiler", "boba", "squewe", "ccat",
    "andy", "inhabitant", "leoret", "dread", "catnap", "mrl", "trespasser", "anim8or", "pool_noodle"
]

# Generate the updated command block setup
for index, item in enumerate(original_list):
    print(f"tag @a[tag={item}_d] remove {item}_d\n")