slide management
askForInputWithQuestion: aString andDo: aBlock onError: anotherString

	| userInput |
	userInput := UIManager default request: aString.
	userInput ifEmpty: [^ self]. "Check for cancel"
	(aBlock value: userInput)
		on: Error 
		do: [UIManager inform: anotherString]