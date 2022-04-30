# SPDX-License-Identifier: GPL-3.0-or-later WITH GPL-3.0-linking exception
# SPDX-FileCopyrightText: (C) 2019, 2022 nfitzen <https://github.com/nfitzen>
# If you modify this Program, or any covered work, by linking or combining it
# with Minecraft: Java Edition (or a modified version of that library),
# containing parts covered by the terms of the Minecraft EULA, the licensors of
# this Program grant you additional permission to convey the resulting work.

# 20 minute markers for recorded-round people
# Called by: uhc:mechanics/episode_markers, uhc:begin

scoreboard players add $epnum uhc.int 1

tellraw @a[scores={uhc.recording=1..}] ["",{"text":"MARKER:","bold":true,"color":"red"},{"text":" end of episode "},{"score":{"name":"epnum","objective":"uhc.int"}},"!"]

schedule function uhc:mechanics/episode_markers 1200s
