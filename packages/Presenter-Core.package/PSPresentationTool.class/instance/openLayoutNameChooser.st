menu bar
openLayoutNameChooser

	self askForInputWithQuestion: 'Enter a name for your Layout'
		andDo: [:userInput | [self createLayout: userInput]]
		onError: 'Not a valid name'
	