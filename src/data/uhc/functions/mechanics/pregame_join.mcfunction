# SPDX-License-Identifier: GPL-3.0-or-later WITH GPL-3.0-linking exception
# SPDX-FileCopyrightText: (C) 2019, 2022 nfitzen <https://github.com/nfitzen>
# If you modify this Program, or any covered work, by linking or combining it
# with Minecraft: Java Edition (or a modified version of that library),
# containing parts covered by the terms of the Minecraft EULA, the licensors of
# this Program grant you additional permission to convey the resulting work.

# Pregame join from initial setup

tp @s {{ uuid.uhc.spawn_center }}
gamemode adventure
team join uhc.nopvp
tag @s add pregame_joined
effect give @s saturation 1000000 20 true

tellraw @s ["Type ",{"text":"/trigger recording","bold":true,"color":"blue","clickEvent":{"action":"suggest_command","value":"/trigger uhc.recording"}},{"text":" to toggle 20-minute markers","color":"reset"}]
scoreboard players enable @s uhc.recording
