presentation mode tests
testSlideNavigationInPresentationMode

	self 
		createSlide;
		selectSlideNumber: 1;
		enablePresentationMode.
		
	self 
		assert: self slideContainer currentSlide equals: self currentSlide;
		selectSlideNumber: 2;
		assert: self slideContainer currentSlide equals: self currentSlide