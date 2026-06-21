if(NOT RADIANT_SUPPORT_SOURCE)
	return()
endif()

# Counter-Strike: Source
radiant_add_gamepack(css
	HAS_BASEGAME
	BASE_TITLE "Half-Life 2"
	BASE_GAMEDIR "hl2"
	TITLE "Counter-Strike: Source"
	KNOWN_GAMEDIRS "cstrike"
	KNOWN_TITLES "Counter-Strike: Source"
	PATH_WIN32 "C:/Program Files (x86)/Steam/steamapps/common/Counter-Strike Source/"
	PATH_LINUX "~/.steam/steam/steamapps/common/Counter-Strike Source/"
	EXECUTABLE_WIN32 "cstrike.exe"
	EXECUTABLE_LINUX "cstrike.sh"
	EXECUTABLE_MACOS "cstrike.sh"
	ENTITIES "cstrike.fgd"
)
