slide navigation tests
testSlideNumberLabelSelectsCorrectly

	| numberOfSlides index |
	numberOfSlides := 5.
	numberOfSlides timesRepeat: [self tool createSlide].
	index := numberOfSlides atRandom.
	self tool slideNumberString: index asString asText.
	self assert: index equals: self tool currentSlideNumber.
	index := numberOfSlides atRandom.
	self tool slideNumberString: (index asString, '/', numberOfSlides) asText.
	self assert: index equals: self tool currentSlideNumber.
	