slide management
openSlideMoveDialog

	self 
		askForNumberWithQuestion: self slideMoveText
		andDo: [:userInput | [self moveCurrentSlideTo: userInput asNumber]]