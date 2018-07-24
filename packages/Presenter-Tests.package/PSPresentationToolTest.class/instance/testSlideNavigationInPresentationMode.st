presentation mode tests
testSlideNavigationInPresentationMode

	self tool 
		createSlide;
		selectSlideNumber: 1;
		enablePresentationMode.
		
	self assert: self tool slideContainer currentSlide equals: self currentSlide.
	self tool selectSlideNumber: 2.
	self assert: self tool slideContainer currentSlide equals: self currentSlide