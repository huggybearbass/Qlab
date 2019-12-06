tell application "QLab"
	tell front workspace
		set spotifyLink to notes of cue "SPOT-PRAYER1"
	end tell
end tell

tell application "Spotify"
	if sound volume is 0 then
		if shuffling is true then
			set shuffling to false
		end if
		play track spotifyLink
		repeat until sound volume is 100
			set d to sound volume + 2
			set sound volume to d
			delay 0.02
		end repeat
	else if sound volume is less than or equal to 100 then
		if shuffling is true then
			set shuffling to false
		end if
		set sound volume to 0
		play track spotifyLink
		repeat until sound volume is 100
			set d to sound volume + 2
			set sound volume to d
			delay 0.02
		end repeat
	end if
end tell  
