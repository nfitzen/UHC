# SPDX-License-Identifier: GPL-3.0-or-later WITH GPL-3.0-linking exception
# SPDX-FileCopyrightText: (C) 2019, 2022 nfitzen <https://github.com/nfitzen>
# If you modify this Program, or any covered work, by linking or combining it
# with Minecraft: Java Edition (or a modified version of that library),
# containing parts covered by the terms of the Minecraft EULA, the licensors of
# this Program grant you additional permission to convey the resulting work.

# Announce game end if only 1 person remains
execute if score alive uhc.int matches ..1 unless score meme uhc.int matches 1..:
    execute as @a:
        title @s subtitle {"nbt":"uhc.mechanics.win.subtitle","storage":"uhc:string","interpret":true}
        title @s title {"nbt":"uhc.mechanics.win.title","storage":"uhc:string","interpret":true}

    scoreboard players reset $game_started uhc.int
    scoreboard players reset alive uhc.int

# Kill any players who left during the game, if forcegamemode is set to on & defaultgamemode is spectator.

kill @a[tag=alive,gamemode=spectator]

# After player dies
execute as @a[scores={uhc.dead=1}] run function uhc:mechanics/player_death

# Calculate alive players (just in case someone DCs for good)

scoreboard players set alive_calc uhc.int 0
execute if score $game_started uhc.int matches 1.. as @a[tag=alive] run scoreboard players add alive_calc uhc.int 1
execute if score $game_started uhc.int matches 1.. run scoreboard players operation alive uhc.int = alive_calc uhc.int

# Refresh recorded round toggle
scoreboard players enable @a[scores={uhc.recording=1..}] uhc.recording
scoreboard players operation @a[scores={uhc.recording=2..}] uhc.recording %= 2 uhc.int

# reschedule
schedule function uhc:core/second 1s replace
