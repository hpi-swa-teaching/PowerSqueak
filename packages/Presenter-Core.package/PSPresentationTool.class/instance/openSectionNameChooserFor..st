sections
openSectionNameChooserFor: aSlide

	self
		askForInputWithQuestion: 'Enter a name for your Section'
		andDo: [:userInput | self createSectionNamed: userInput startingAt: aSlide]
		onError: 'Section name already exists'
