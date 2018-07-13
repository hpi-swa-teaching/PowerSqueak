slide management
openSlideSelectionDialog

	| userInput |
	userInput := UIManager default request: self slideSelectionDialogText.
	userInput ifEmpty: [^ self]. "Check for cancel"
	[self selectSlideNumber: userInput asNumber] 
		on: Error 
		do: [UIManager inform: 'Not a valid number']