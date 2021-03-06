try
	copyDocumentPathToClipboard()
on error errMsg number errNum
	if errNum is not equal to -128 then
		activate -- This prevents a beep when scripts are run from LaunchBar but it also makes the script run slower from the Script Menu
		display dialog "AppleScript encountered an error." & ¬
			" Error Message: " & errMsg & " Number " & errNum
	end if
end try

on copyDocumentPathToClipboard()
	tell application "Xcode"
		-- Note this hack to get the document will fail if the same file is open in two different tabs
		set theDocument to document 1 whose name ends with (word -1 of (get name of window 1))
		set theSelectedCharacterRange to selected character range of theDocument
		set theSelectedParagraphRange to selected paragraph range of theDocument
		set theStart to item 1 of theSelectedCharacterRange
		set theEnd to item 2 of theSelectedCharacterRange
		set thePath to the path of theDocument
		if the theEnd - theStart is greater than 1 then
			set theLineStart to item 1 of theSelectedParagraphRange
			set theLineEnd to item 2 of theSelectedParagraphRange
			
			set theText to theDocument's text as string
			set theSelectedText to (characters theStart thru theEnd of theText) as string
			set the clipboard to theSelectedText
			set theURL to do shell script "pbpaste | ~/.bin/link_source_control_markdown --quote " & "--line-number " & theLineStart & " " & the quoted form of thePath
		else
			set theURL to do shell script "~/.bin/link_source_control_markdown " & the quoted form of thePath
		end if
		set the clipboard to theURL
	end tell
end copyDocumentPathToClipboard
