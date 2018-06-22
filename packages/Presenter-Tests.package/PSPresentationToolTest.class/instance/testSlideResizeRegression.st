window resizing tests
testSlideResizeRegression
	"Regression test for #32"
	self assert: (self is: [self tool currentSlide extent] constantOnResizeOf: self window) not