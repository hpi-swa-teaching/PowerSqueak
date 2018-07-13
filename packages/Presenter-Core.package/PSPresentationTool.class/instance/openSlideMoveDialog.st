slide management
openSlideMoveDialog

	| userInput |
	userInput := UIManager default request: 'Where should I move the current slide???'.
	userInput ifEmpty: [^ self]. "Check for cancel"
	[self moveCurrentSlideTo: userInput asNumber] 
		on: Error 
		do: [UIManager inform: 'Not a valid number']