tell application "Spotify"
  if sound volume is 0 then
		if shuffling is false then
			set shuffling to true
		end if
		play track "[spotify url here]"
		repeat until sound volume is 100
			set d to sound volume + 2
			set sound volume to d
			delay 0.02
		end repeat
		if shuffling is true then
			set shuffling to false
		end if
	else if sound volume is less than or equal to 100 then
		repeat until sound volume is 0
			set t to sound volume - 2
			set sound volume to t
			delay 0.05
		end repeat
		if shuffling is false then
			set shuffling to true
		end if
		play track "[spotify url here]"
		repeat until sound volume is 100
			set d to sound volume + 2
			set sound volume to d
			delay 0.02
		end repeat
		if shuffling is true then
			set shuffling to false
		end if
		if repeating is false then
			set repeating to true
		end if
	end if
end tell
