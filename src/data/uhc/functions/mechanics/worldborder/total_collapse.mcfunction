# SPDX-License-Identifier: GPL-3.0-or-later WITH GPL-3.0-linking exception
# SPDX-FileCopyrightText: (C) 2019, 2022 nfitzen <https://github.com/nfitzen>
# If you modify this Program, or any covered work, by linking or combining it
# with Minecraft: Java Edition (or a modified version of that library),
# containing parts covered by the terms of the Minecraft EULA, the licensors of
# this Program grant you additional permission to convey the resulting work.

# Collapses WB entirely

worldborder set 1 30
schedule function uhc:mechanics/worldborder/annihilate_overworld 30s

schedule function uhc:mechanics/worldborder/annihilate_nether 30s
