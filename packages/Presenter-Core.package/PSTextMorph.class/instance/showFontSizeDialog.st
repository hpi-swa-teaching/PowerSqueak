styling
showFontSizeDialog

	| newSize |
	newSize := UIManager default 
		request: self fontSizeDialogText
		initialAnswer: self selectionFontSize printString.
	newSize isEmpty ifTrue: [^ self].
	[self selectionFontSize: newSize asNumber]
		on: Error 
		do: [UIManager inform: 'Not a valid number']