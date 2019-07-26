slide management
openSlideMoveDialogFor: aSlide

	self 
		askForInputWithQuestion: self slideMoveText
		andDo: [:userInput | self moveSlide: aSlide to: userInput asNumber]
		onError: 'Not a valid number'