as yet unclassified
testLeavingSlideDoesntExecuteEnterScript

	self selectSlideEnterScript.
	self setInteractScript.
	self tool createSlide.
	self tool selectSlideNumber: 2.
	self deny: self interacted.