window resizing tests
testSlideResizeRegression
	"Regression test for #32 - expected to fail!"
	self assert: [self tool currentSlide extent] constantOnResizeOf: self window