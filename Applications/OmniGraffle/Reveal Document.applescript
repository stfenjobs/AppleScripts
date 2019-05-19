try
	revealDocument()
on error errMsg number errNum
	if errNum is not equal to -128 then
		display dialog "AppleScript encountered an error." & ¬
			" Error Message: " & errMsg & " Number " & errNum
	end if
end try

on revealDocument()
	tell application "OmniGraffle"
		set theDocument to document 1
		set thePath to the path of theDocument
		set theFile to ((thePath as text) as POSIX file)
		tell application "Finder"
			activate
			set theContainer to container of (theFile as alias)
			make new Finder window to theContainer
			reveal theFile
		end tell
	end tell
end revealDocument
