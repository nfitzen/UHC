# SPDX-License-Identifier: GPL-3.0-or-later WITH GPL-3.0-linking exception
# SPDX-FileCopyrightText: (C) 2019, 2022 nfitzen <https://github.com/nfitzen>
# If you modify this Program, or any covered work, by linking or combining it
# with Minecraft: Java Edition (or a modified version of that library),
# containing parts covered by the terms of the Minecraft EULA, the licensors of
# this Program grant you additional permission to convey the resulting work.

# Player "eating" mechanic
# Called by: uhc:core/tick

execute as @e[type=minecraft:item,nbt={"Item":{"id":"minecraft:player_head","tag":{"__custom__":{"uhc":{"edible_head":true}}}}}]
    if data entity @s Thrower at @s:
    effect give @p[distance=..2,gamemode=!spectator,tag=uhc.alive] minecraft:regeneration 13 1 true
    kill @s
