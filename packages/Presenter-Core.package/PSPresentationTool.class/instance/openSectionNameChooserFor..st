slide sections
openSectionNameChooserFor: aSlide

	self askForInputWithQuestion: 'Enter a name for your Section'
		andDo: [:userInput | self createSectionNamed: userInput startingAt: aSlide slideNumber]
		onError: 'Not a valid name'
