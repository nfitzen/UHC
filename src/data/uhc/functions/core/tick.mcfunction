# SPDX-License-Identifier: GPL-3.0-or-later WITH GPL-3.0-linking exception
# SPDX-FileCopyrightText: (C) 2019, 2022 nfitzen <https://github.com/nfitzen>
# If you modify this Program, or any covered work, by linking or combining it
# with Minecraft: Java Edition (or a modified version of that library),
# containing parts covered by the terms of the Minecraft EULA, the licensors of
# this Program grant you additional permission to convey the resulting work.

# Runs every tick
# Called by: #main:tick

# For pregame, after initial setup
execute unless score $game_started uhc.int matches 1.. as @a[tag=!pregame_joined] run function uhc:mechanics/pregame_join

# Put anyone joining after the game started into spectator
execute if score $game_started uhc.int matches 1.. as @a[tag=!postgame_join] run gamemode spectator
execute if score $game_started uhc.int matches 1.. as @a[tag=!postgame_join] run tag @s add postgame_join

# Player head "eating" mechanism
function uhc:mechanics/head_eating
