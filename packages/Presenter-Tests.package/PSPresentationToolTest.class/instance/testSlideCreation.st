slides test
testSlideCreation

	| tool slideCount |
	tool := PSPresentationTool new.
	self assert: tool currentSlideNumber = 1.
	
	self assert: tool slideCount = 1.
	
	slideCount := tool slideCount
	tool createSlide.
	self assert: tool slideCount = (slideCount + 1).
	self assert: tool currentSlideNumber = 2.