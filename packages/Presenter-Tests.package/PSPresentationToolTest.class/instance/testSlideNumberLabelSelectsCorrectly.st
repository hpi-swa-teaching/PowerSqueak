slide navigation tests
testSlideNumberLabelSelectsCorrectly

	| numberOfNewSlides index |
	numberOfNewSlides := 5.
	numberOfNewSlides timesRepeat: [self createSlide].
	
	index := self slideCount atRandom.
	self tool slideNumberString: index asString asText.
	self assert: index equals: self currentSlideNumber.
	
	index := self slideCount atRandom.
	self tool slideNumberString: (index asString , '/' , self slideCount) asText.
	self assert: index equals: self currentSlideNumber
	