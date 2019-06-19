as yet unclassified
changeSnapSize

	self 
		askForInputWithQuestion: 'Choose your snap size between 0.01-0.5'
		withInitial: self slideContainer snapSize asString
		andDo: [:userInput | | number |
			number := userInput asNumber.
			(number inRangeOf: self class minSnapSize and: self class maxSnapSize) 
				ifTrue: [self slideContainer snapSize: number]
				ifFalse: [self slideContainer snapSize: (number clampLow: self class minSnapSize high: self class minSnapSize). self inform: 'I set the snap size to: ', self slideContainer snapSize asString]]
		onError: 'I can not understand what you said. 
		Please try again.' 