tests
testRestoreOnToolReinstatesSlides
	| state |
	state := PSPresentationState new.
	state captureFromTool: self tool.
	self createSlide.
	self assert: (self presentation slideCount > state slides size).
	state restoreOnTool: self tool.
	self assert: self presentation slideCount equals: state slides size
