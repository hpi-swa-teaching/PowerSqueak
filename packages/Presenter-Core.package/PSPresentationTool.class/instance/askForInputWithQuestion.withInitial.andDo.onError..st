slide management
askForInputWithQuestion: aString withInitial: initialString andDo: aBlock onError: anotherString

	| userInput |
	userInput := UIManager default request: aString initialAnswer: initialString.
	userInput ifEmpty: [^ self]. "Check for cancel"
	[aBlock value: userInput]
		on: Error 
		do: [UIManager inform: anotherString]