# SPDX-License-Identifier: GPL-3.0-or-later WITH GPL-3.0-linking exception
# SPDX-FileCopyrightText: (C) 2019, 2022 nfitzen <https://github.com/nfitzen>
# If you modify this Program, or any covered work, by linking or combining it
# with Minecraft: Java Edition (or a modified version of that library),
# containing parts covered by the terms of the Minecraft EULA, the licensors of
# this Program grant you additional permission to convey the resulting work.

data remove storage uhc:string_defaults uhc

data merge storage uhc:string_defaults {"uhc":{}}

data modify storage uhc:string_defaults uhc.mechanics.win.title set value '{"selector":"@r[tag=alive]"}'
data modify storage uhc:string_defaults uhc.mechanics.win.subtitle set value '"wins the UHC!"'

data modify storage uhc:string_defaults uhc.mechanics.begin.title set value '"The UHC"'
data modify storage uhc:string_defaults uhc.mechanics.begin.subtitle set value '"has begun!"'

data modify storage uhc:string uhc merge from storage uhc:string_defaults uhc
