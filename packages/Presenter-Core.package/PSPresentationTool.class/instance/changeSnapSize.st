slide management
changeSnapSize

	self 
		askForInputWithQuestion: self class snapSizeDialogString
		withInitial: self slideContainer snapSize asString
		andDo: [:userInput | self setSnapSizeTo: userInput asNumber]
		onError: 'I can not understand what you said. ', Character cr, 'Please try again.' 