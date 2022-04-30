# SPDX-License-Identifier: GPL-3.0-or-later WITH GPL-3.0-linking exception
# SPDX-FileCopyrightText: (C) 2019, 2022 nfitzen <https://github.com/nfitzen>
# If you modify this Program, or any covered work, by linking or combining it
# with Minecraft: Java Edition (or a modified version of that library),
# containing parts covered by the terms of the Minecraft EULA, the licensors of
# this Program grant you additional permission to convey the resulting work.

# Setup UHC platform

fill ~36 ~100 ~36 ~-36 ~105 ~-36 minecraft:barrier hollow

# Prep for world

gamerule doDaylightCycle false
gamerule doMobSpawning false

time set 0

# Set everyone to adventure and TP
summon minecraft:marker ~ ~101 ~ {"Tags":["uhc.spawn_center"],"UUID":{{ uuid.uhc.spawn_entity.data }}}
execute as @a:
    gamemode adventure @s
    tp @s {{ uuid.uhc.spawn_entity.hex }}
    spawnpoint @s ~ ~ ~
    tag @s add pregame_joined
    team join uhc.nopvp @s
    effect give @s saturation 1000000 20 true

# Set center
execute at {{ uuid.uhc.spawn_entity.hex }}:
    setworldspawn
    worldborder center ~ ~
    worldborder set 2000

tellraw @s [{"text":"UHC platform setup! Click ","bold":true},{"text":"here","underlined":true,"bold":true,"color":"green","clickEvent":{"action":"suggest_command","value":"/function uhc:begin"}},{"text":" to begin the UHC!","color":"reset","bold":true}]

tellraw @a ["Type ",{"text":"/trigger recording set 1","bold":true,"color":"blue","clickEvent":{"action":"suggest_command","value":"/trigger uhc.recording set 1"}},{"text":" to enable 20-minute markers","color":"reset"}]
scoreboard players enable @a uhc.recording
