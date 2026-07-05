presentation mode tests
testSlideNavigationInPresentationMode

	self 
		createSlide;
		selectSlideAt: 1;
		enablePresentationMode.
		
	self 
		assert: self slideContainer currentSlide equals: self currentSlide;
		selectSlideAt: 2;
		assert: self slideContainer currentSlide equals: self currentSlide