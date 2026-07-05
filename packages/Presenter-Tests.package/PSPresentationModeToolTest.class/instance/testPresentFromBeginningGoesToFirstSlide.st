presentation mode tests
testPresentFromBeginningGoesToFirstSlide
	
	self tool createSlide.
	self tool presentFromBeginning.
	self assert: self currentSlideNumber equals: 1