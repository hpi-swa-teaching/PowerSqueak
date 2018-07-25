presentation mode tests
testSlideNavigationInPresentationMode

	self 
		createSlide;
		selectSlideNumber: 1;
		enablePresentationMode.
		
	self assert: self slideContainer currentSlide equals: self currentSlide.
	self tool selectSlideNumber: 2.
	self assert: self slideContainer currentSlide equals: self currentSlide