#> This function will run on datapack loading
function nikos_nextbots_spawn_ai:main

tellraw @a {"text":"Vote System Loaded"}

schedule function nnb_vote:tick 3s