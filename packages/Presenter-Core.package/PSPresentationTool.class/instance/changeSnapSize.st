as yet unclassified
changeSnapSize

	self 
		askForInputWithQuestion: 'Choose your snap size between 0.01-0.5'
		withInitial: self slideContainer snapSize asString
		andDo: [:userInput | | number |
			number := userInput asNumber.
			(number inRangeOf: 0.01 and: 0.5) 
				ifTrue: [self slideContainer snapSize: number]
				ifFalse: [self slideContainer snapSize: (number clampLow: 0.01 high: 0.5). self inform: 'I set the snap size to: ', self slideContainer snapSize asString]]
		onError: 'I can not understand what you said. 
		Please try again.' 