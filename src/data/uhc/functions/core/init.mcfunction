# SPDX-License-Identifier: GPL-3.0-or-later WITH GPL-3.0-linking exception
# SPDX-FileCopyrightText: (C) 2019, 2022 nfitzen <https://github.com/nfitzen>
# If you modify this Program, or any covered work, by linking or combining it
# with Minecraft: Java Edition (or a modified version of that library),
# containing parts covered by the terms of the Minecraft EULA, the licensors of
# this Program grant you additional permission to convey the resulting work.

# Datapack initialization
# Called by: #main:init

# Create necessary scoreboard variables & teams

scoreboard objectives add uhc.dead deathCount
scoreboard objectives add uhc.int dummy "Misc. Dummy Variables"

scoreboard objectives add uhc.recording trigger "Recording Enabled"

scoreboard objectives add uhc.health health {"text":"❤","color":"red"}

team add uhc.nopvp "PVP disabled"
team modify uhc.nopvp friendlyFire false

# Initialize constants

scoreboard players set 2 uhc.int 2
