slide management
openSlideSelectionDialog

	| userInput |
	userInput := UIManager default request: 'Which slide should I select???'.
	[self selectSlide: userInput asNumber] 
		on: Error 
		do: [UIManager inform: 'Not a valid number']