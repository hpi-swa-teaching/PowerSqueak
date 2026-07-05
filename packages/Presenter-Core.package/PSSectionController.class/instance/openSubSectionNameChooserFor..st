section creation
openSubSectionNameChooserFor: aSlide

	self tool
		askForInputWithQuestion: 'Enter a name for your sub-section'
		andDo: [:userInput | self createSubSectionNamed: userInput startingAt: aSlide]
		onError: 'Section name already exists'