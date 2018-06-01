styling
showFontSizeDialog

	| newSize |
	newSize := UIManager default 
		request: 'Please enter new text size' 
		initialAnswer: self basicTextSize printString.
	[self basicTextSize:  newSize asNumber] 
		on: Error 
		do: [UIManager inform: 'Not a valid number']