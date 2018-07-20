window resizing tests
testSlideResizeRegression
	"Regression test for #32"
	self 
		should: [self assert: [self tool currentSlide extent] constantOnResizeOf: self window]
		raise: TestFailure