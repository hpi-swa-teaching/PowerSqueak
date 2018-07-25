slide management
askForNumberWithQuestion: aString andDo: aBlock

	| userInput |
	userInput := UIManager default request: aString.
	userInput ifEmpty: [^ self]. "Check for cancel"
	(aBlock value: userInput)
		on: Error 
		do: [UIManager inform: 'Not a valid number']