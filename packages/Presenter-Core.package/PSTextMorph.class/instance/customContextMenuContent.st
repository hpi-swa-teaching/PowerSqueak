accessing
customContextMenuContent

	^ #(
		-
		('Change text size' #showFontSizeDialog 'changes the currently selected text or the whole text, if none is selected')
		('Change text color' #showFontColorDialog 'changes the currently selected text or the whole text, if none is selected')
	)