if(NOT RADIANT_SUPPORT_GOLDSRC)
	return()
endif()

# Half-Life
radiant_add_gamepack(hl
	GOLDSRC
	TITLE "Half-Life"
	GAMEDIR "valve"
	PATH_WIN32 "C:/Program Files (x86)/Steam/steamapps/common/Half-Life/"
	PATH_LINUX "~/.steam/steam/steamapps/common/Half-Life/"
	EXECUTABLE_WIN32 "hl.exe"
	EXECUTABLE_LINUX "hl.sh"
	EXECUTABLE_MACOS "hl.sh"
	ENTITIES "halflife.fgd"
)

# Half-Life: Blue Shift
radiant_add_gamepack(bshift
	GOLDSRC
	HAS_BASEGAME
	BASE_TITLE "Half-Life"
	BASE_GAMEDIR "valve"
	TITLE "Half-Life: Blue Shift"
	KNOWN_GAMEDIRS "bshift"
	KNOWN_TITLES "Half-Life: Blue Shift"
	PATH_WIN32 "C:/Program Files (x86)/Steam/steamapps/common/Half-Life/"
	PATH_LINUX "~/.steam/steam/steamapps/common/Half-Life/"
	EXECUTABLE_WIN32 "hl.exe"
	EXECUTABLE_LINUX "hl.sh"
	EXECUTABLE_MACOS "hl.sh"
	ENTITIES "bshift.fgd"
)

# Half-Life: Opposing Force
radiant_add_gamepack(gearbox
	GOLDSRC
	HAS_BASEGAME
	BASE_TITLE "Half-Life"
	BASE_GAMEDIR "valve"
	TITLE "Half-Life: Opposing Force"
	KNOWN_GAMEDIRS "gearbox"
	KNOWN_TITLES "Half-Life: Opposing Force"
	PATH_WIN32 "C:/Program Files (x86)/Steam/steamapps/common/Half-Life/"
	PATH_LINUX "~/.steam/steam/steamapps/common/Half-Life/"
	EXECUTABLE_WIN32 "hl.exe"
	EXECUTABLE_LINUX "hl.sh"
	EXECUTABLE_MACOS "hl.sh"
	ENTITIES "halflife-op4.fgd"
)

# Team Fortress Classic
radiant_add_gamepack(tfc
	GOLDSRC
	HAS_BASEGAME
	BASE_TITLE "Half-Life"
	BASE_GAMEDIR "valve"
	TITLE "Team Fortress Classic"
	KNOWN_GAMEDIRS "tfc"
	KNOWN_TITLES "Team Fortress Classic"
	PATH_WIN32 "C:/Program Files (x86)/Steam/steamapps/common/Half-Life/"
	PATH_LINUX "~/.steam/steam/steamapps/common/Half-Life/"
	EXECUTABLE_WIN32 "hl.exe"
	EXECUTABLE_LINUX "hl.sh"
	EXECUTABLE_MACOS "hl.sh"
	ENTITIES "tfc.fgd"
)

# Day of Defeat
radiant_add_gamepack(dod
	GOLDSRC
	HAS_BASEGAME
	BASE_TITLE "Half-Life"
	BASE_GAMEDIR "valve"
	TITLE "Day of Defeat"
	KNOWN_GAMEDIRS "dod"
	KNOWN_TITLES "Day of Defeat"
	PATH_WIN32 "C:/Program Files (x86)/Steam/steamapps/common/Half-Life/"
	PATH_LINUX "~/.steam/steam/steamapps/common/Half-Life/"
	EXECUTABLE_WIN32 "hl.exe"
	EXECUTABLE_LINUX "hl.sh"
	EXECUTABLE_MACOS "hl.sh"
	ENTITIES "dod.fgd"
)

# Counter-Strike
radiant_add_gamepack(cstrike
	GOLDSRC
	HAS_BASEGAME
	BASE_TITLE "Half-Life"
	BASE_GAMEDIR "valve"
	TITLE "Counter-Strike"
	KNOWN_GAMEDIRS "cstrike"
	KNOWN_TITLES "Counter-Strike"
	PATH_WIN32 "C:/Program Files (x86)/Steam/steamapps/common/Half-Life/"
	PATH_LINUX "~/.steam/steam/steamapps/common/Half-Life/"
	EXECUTABLE_WIN32 "hl.exe"
	EXECUTABLE_LINUX "hl.sh"
	EXECUTABLE_MACOS "hl.sh"
	ENTITIES "cstrike.fgd"
)

# Ricochet
radiant_add_gamepack(ricochet
	GOLDSRC
	HAS_BASEGAME
	BASE_TITLE "Half-Life"
	BASE_GAMEDIR "valve"
	TITLE "Ricochet"
	KNOWN_GAMEDIRS "ricochet"
	KNOWN_TITLES "Ricochet"
	PATH_WIN32 "C:/Program Files (x86)/Steam/steamapps/common/Half-Life/"
	PATH_LINUX "~/.steam/steam/steamapps/common/Half-Life/"
	EXECUTABLE_WIN32 "hl.exe"
	EXECUTABLE_LINUX "hl.sh"
	EXECUTABLE_MACOS "hl.sh"
	ENTITIES "ricochet.fgd"
)

# Gunman Chronicles
radiant_add_gamepack(rewolf
	GOLDSRC
	TITLE "Gunman Chronicles"
	GAMEDIR "rewolf"
	PATH_WIN32 "C:/Program Files (x86)/Steam/steamapps/common/Half-Life/"
	PATH_LINUX "~/.steam/steam/steamapps/common/Half-Life/"
	EXECUTABLE_WIN32 "hl.exe"
	EXECUTABLE_LINUX "hl.sh"
	EXECUTABLE_MACOS "hl.sh"
	ENTITIES "gunman.fgd"
)
