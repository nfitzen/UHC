# SPDX-License-Identifier: GPL-3.0-or-later WITH GPL-3.0-linking exception
# SPDX-FileCopyrightText: (C) 2019, 2022 nfitzen <https://github.com/nfitzen>
# If you modify this Program, or any covered work, by linking or combining it
# with Minecraft: Java Edition (or a modified version of that library),
# containing parts covered by the terms of the Minecraft EULA, the licensors of
# this Program grant you additional permission to convey the resulting work.

# Setup scoreboard variables & enable PVP
team remove uhc.nopvp
scoreboard objectives setdisplay belowName health
scoreboard objectives setdisplay list health

# Gamerules applied

gamerule doDaylightCycle true
gamerule naturalRegeneration false
gamerule doMobSpawning true

# Remove spawn barriers
execute at {{ uuid.uhc.spawn_entity.hex }} run fill ~36 ~-1 ~36 ~-36 ~4 ~-36 minecraft:air
kill {{ uuid.uhc.spawn_entity.hex }}

# Reset health back to full, change to survival, & clear inventories

execute as @a:
    effect give @s minecraft:instant_health 1 20
    effect clear @s minecraft:saturation
    clear @s
    xp set @s 0 levels
    xp set @s 0 points

    gamemode survival @s

    tag @s add postgame_join

    tag @s add alive

spreadplayers ~ ~ 200 950 false @a

worldborder set 100 8400

schedule function uhc:mechanics/worldborder/announcement 8400s

schedule function uhc:mechanics/episode_markers 1200s

scoreboard players set $game_started uhc_int 1

title @a subtitle {"storage":"uhc:string","nbt":"uhc.mechanics.begin.subtitle","interpret": true}
title @a title {"storage":"uhc:string","nbt":"uhc.mechanics.begin.title","interpret": true}
