slide management
changeSnapSize

	self 
		askForInputWithQuestion: 'Choose your snap size between 0.01-0.5'
		withInitial: self slideContainer snapSize asString
		andDo: [:userInput | self setSnapSizeTo: userInput asNumber]
		onError: 'I can not understand what you said. ', Character cr, 'Please try again.' 