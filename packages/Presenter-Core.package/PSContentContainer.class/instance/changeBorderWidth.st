scaling
changeBorderWidth

	| answer |
	answer := UIManager default
		request: self borderWidthDialogText
		initialAnswer: self content borderWidth printString.
	answer ifEmpty: [^ self].
	[self changeContentBorderWidth: answer asNumber]
		on: Error
		do: [UIManager default inform: 'Not a valid number']