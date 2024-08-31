execute store result score $v_ll __variable__ run $(ll)
scoreboard players set __found_case__ __variable__ 0
execute store result storage nnb_main:__storage__ switch_key int 1 run scoreboard players get $v_ll __variable__
function nnb_main:__private__/switch_case/1/select with storage nnb_main:__storage__
execute unless score __found_case__ __variable__ matches 1 run function nnb_main:__private__/switch_case/1/default