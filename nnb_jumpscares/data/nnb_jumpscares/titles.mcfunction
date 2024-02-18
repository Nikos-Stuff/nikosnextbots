#> Metal Pipe
execute as @a[tag=metalpipe_d] if score @s nn_jumpscare matches 1 run title @s {"text":"  AAA!"}
execute as @a[tag=metalpipe_d] if score @s nn_jumpscare matches 2 run title @s {"text":"AAA!"}
execute as @a[tag=metalpipe_d] if score @s nn_jumpscare matches 3 run title @s {"text":" AAA!  "}
execute as @a[tag=metalpipe_d] if score @s nn_jumpscare matches 3 run scoreboard players add @s nn_jumpscare_run 1
