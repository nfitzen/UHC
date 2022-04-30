# SPDX-License-Identifier: GPL-3.0-or-later WITH GPL-3.0-linking exception
# SPDX-FileCopyrightText: (C) 2019, 2022 nfitzen <https://github.com/nfitzen>
# If you modify this Program, or any covered work, by linking or combining it
# with Minecraft: Java Edition (or a modified version of that library),
# containing parts covered by the terms of the Minecraft EULA, the licensors of
# this Program grant you additional permission to convey the resulting work.

# Annihilates anyone in the Nether after the worldborder collapses

execute as @a[nbt={"Dimension":"minecraft:the_nether"}]:
    title @s subtitle "the Nether!"
    title @s title "No being in"
    kill @s
