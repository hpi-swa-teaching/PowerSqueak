slides test
testSlideNavigation

	| tool slideCount window |
	window := PSPresentationTool open.
	[tool := window model.
	self assert: tool currentSlide = tool slides first.
	self assert: tool currentSlideNumber = 1.
	
	slideCount := 3.
	slideCount timesRepeat: [tool createSlide].
	
	self assert: tool currentSlideNumber = (1 + slideCount).
	self assert: tool currentSlide = (tool slideAt: (1 + slideCount)).
	
	tool nextSlide.
	self assert: tool currentSlideNumber = (1 + slideCount).
	self assert: tool currentSlide = (tool slideAt: (1 + slideCount)).
	
	tool previousSlide.
	self assert: tool currentSlideNumber = slideCount.
	self assert: tool currentSlide = (tool slideAt: slideCount).
	
	tool nextSlide.
	self assert: tool currentSlideNumber = (1 + slideCount).
	self assert: tool currentSlide = (tool slideAt: (1 + slideCount)).
	
	tool selectSlide: 1.
	self assert: tool currentSlideNumber = 1.
	self assert: tool currentSlide = tool slides first.
	
	tool previousSlide.
	self assert: tool currentSlideNumber = 1.
	self assert: tool currentSlide = tool slides first] ensure: [window abandon ]