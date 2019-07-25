as yet unclassified
testLeavingSlideDoesntExecuteEnterScript

	self selectSlideEnterScript.
	self setInteractScript.
	self tool createSlide.
	self tool selectSlideAt: 2.
	self deny: self interacted.