menu bar
openLayoutNameChooserFor: aSlide

	self askForInputWithQuestion: 'Enter a name for your Layout'
		andDo: [:userInput | self createLayout: userInput from: aSlide]
		onError: 'Layout name already exists'
	