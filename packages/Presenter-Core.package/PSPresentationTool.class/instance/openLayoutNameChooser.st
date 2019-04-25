menu bar
openLayoutNameChooser

	self askForInputWithQuestion: 'Enter a name for your Layout' andDo: [:userInput | [self presentation addLayout: self currentSlide copy withName: userInput]] onError: 'Not a valid name'
	