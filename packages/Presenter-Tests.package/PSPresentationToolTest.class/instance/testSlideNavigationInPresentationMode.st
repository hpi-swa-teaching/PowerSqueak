presentation mode tests
testSlideNavigationInPresentationMode

	self tool 
		createSlide;
		selectSlide: 1;
		enablePresentationMode.
	self assert: self tool slideContainer currentSlide equals: self tool currentSlide.
	self tool selectSlide: 2.
	self assert: self tool slideContainer currentSlide equals: self tool currentSlide