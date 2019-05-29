styling
showTextSizeDialog

	| newSize |
	newSize := UIManager default 
		request: self fontSizeDialogText
		initialAnswer: self selectionFontSize printString.
	newSize ifEmpty: [^ self]. "Check for cancel"
	[self selectionFontSize: newSize asNumber]
		on: Error 
		do: [UIManager inform: 'Not a valid number']