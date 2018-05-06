slides test
testSlideCreation

	| window tool slideCount |
	window := PSPresentationTool open.
	tool := window model.
	[self assert: tool currentSlideNumber = 1.
	
	self assert: tool slideCount = 1.
	
	slideCount := tool slideCount.
	tool createSlide.
	self assert: tool slideCount = (slideCount + 1).
	self assert: tool currentSlideNumber = 2] 
	ensure: [window abandon]