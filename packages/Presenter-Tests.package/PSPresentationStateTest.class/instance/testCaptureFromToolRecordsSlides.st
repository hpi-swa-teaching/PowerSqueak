tests
testCaptureFromToolRecordsSlides
	| state |
	state := PSPresentationState new.
	state captureFromTool: self tool.
	self assert: state slides equals: self presentation slides.
	self assert: state currentSlideNumber equals: self tool currentSlideNumber
