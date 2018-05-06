slides test
testSlideCreation

	| tool slideCount |
	tool := PSPresentationTool new.
	
	self assert: tool slides size = 1.
	
	slideCount := tool slides size.
	tool createSlide.
	self assert: tool slides size = (slideCount + 1)