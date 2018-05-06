slides test
testSlideDeletion

	| tool slideCount slide deletedSlide |
	tool := PSPresentationTool.
	
	tool createSlide.
	slideCount := tool slides size.
	self assert: slideCount = 2.
	
	slide := tool slides first.
	deletedSlide := tool slides second.
	
	tool deleteSlide: 2.
	self assert: tool slides size = (slideCount - 1).
	self assert: tool slides first = slide.
	self assert: (tool slides contains: deletedSlide) not.
	
	tool createSlide.
	deletedSlide := tool slides first.
	slide := tool slides second.
	tool deleteSlide: 1.
	self assert: tool slides first = slide