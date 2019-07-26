slide number tests
testSlideNumberDuplicationUpdatesSlideNumber

	| previousSlideNumber container |
	previousSlideNumber := self slideNumberMorphNumber.
	self tool duplicateCurrentSlide.
	self tool nextSlide.
	container := self tool currentSlide firstSubmorph.
	container step.
	self assert: (self slideNumberOf: container content) equals: previousSlideNumber + 1
	