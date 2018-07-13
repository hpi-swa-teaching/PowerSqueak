slide management
openSlideSelectionDialog

	| userInput |
	userInput := UIManager default request: 'Which slide should I select???'.
	userInput isEmpty ifTrue: [^ self]. "Check for cancel"
	[self selectSlideNumber: userInput asNumber] 
		on: Error 
		do: [UIManager inform: 'Not a valid number']