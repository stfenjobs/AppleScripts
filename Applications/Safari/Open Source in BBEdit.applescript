try
	openSourceInTextMate()
on error errMsg number errNum
	if errNum is not equal to -128 then
		activate -- This prevents a beep when scripts are run from LaunchBar but it also makes the script run slower from the Script Menu
		display dialog "AppleScript encountered an error." & ¬
			" Error Message: " & errMsg & " Number " & errNum
	end if
end try

on openSourceInTextMate()
	set theCommand to "/usr/local/bin/bbedit"
	if application "Safari Technology Preview" is frontmost then
		tell application "Safari Technology Preview"
			set theSource to source of document 1
		end tell
	else
		tell application "Safari"
			set theSource to source of document 1
		end tell
	end if
	-- do shell script "echo " & the quoted form of theSource & " | " & theCommand
	set theOldClipboard to the clipboard
	set the clipboard to theSource
	do shell script "/usr/bin/pbpaste" & " | " & theCommand
	set the clipboard to theOldClipboard
end openSourceInTextMate
