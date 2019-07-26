slide number tests
testInsertSlideNumberAddsSlideNumbersToAllSlides
	
	self createSlideAfterIndex: 0.
	self createSlideAfterIndex: 0.
	self tool insertSlideNumbers.
	self tool selectSlideAt: 1.
	self deny: self tool currentSlide submorphs isEmpty.
	self tool selectSlideAt: 2.
	self deny: self tool currentSlide submorphs isEmpty.