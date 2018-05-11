slides test
testSlideDeletion

	| window tool slideCount slide deletedSlide |
	[window := PSPresentationTool open.
	tool := window model.
	tool createSlide.
	slideCount := tool slideCount.
	self assert: slideCount = 2.
	
	slide := tool slides first.
	deletedSlide := tool slides second.
	
	tool deleteSlide: 2.
	self assert: tool slideCount = (slideCount - 1).
	self assert: tool slides first = slide.
	self assert: (tool slides includes: deletedSlide) not.
	self assert: tool currentSlideNumber ~= 2.
	self assert: tool currentSlide class = PSSlide.
	
	tool createSlide.
	deletedSlide := tool slides first.
	slide := tool slides second.
	tool deleteSlide: 1.
	self assert: tool slides first = slide.
	self assert: tool currentSlide class = PSSlide]
	ensure: [window abandon]