slide management
openSlideMoveDialog

	self 
		askForInputWithQuestion: self slideMoveText
		andDo: [:userInput | [self moveCurrentSlideTo: userInput asNumber]]
		onError: 'Not a valid number'