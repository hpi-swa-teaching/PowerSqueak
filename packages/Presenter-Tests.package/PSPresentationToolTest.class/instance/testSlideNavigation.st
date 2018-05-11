slides test
testSlideNavigation

	| slideCount |
	self assert: self tool currentSlide = self tool slides first.
	self assert: self tool currentSlideNumber = 1.
	
	slideCount := 3.
	slideCount timesRepeat: [self tool createSlide].
	
	self assert: self tool currentSlideNumber = (1 + slideCount).
	self assert: self tool currentSlide = (self tool slideAt: (1 + slideCount)).
	
	self tool nextSlide.
	self assert: self tool currentSlideNumber = (1 + slideCount).
	self assert: self tool currentSlide = (self tool slideAt: (1 + slideCount)).
	
	self tool previousSlide.
	self assert: self tool currentSlideNumber = slideCount.
	self assert: self tool currentSlide = (self tool slideAt: slideCount).
	
	self tool nextSlide.
	self assert: self tool currentSlideNumber = (1 + slideCount).
	self assert: self tool currentSlide = (self tool slideAt: (1 + slideCount)).
	
	self tool selectSlide: 1.
	self assert: self tool currentSlideNumber = 1.
	self assert: self tool currentSlide = self tool slides first.
	
	self tool previousSlide.
	self assert: self tool currentSlideNumber = 1.
	self assert: self tool currentSlide = self tool slides first