slide number tests
testSlideNumberDuplicationUpdatesSlideNumber

	| previousSlideNumber |
	previousSlideNumber := self currentSlideNumberMorphNumber.
	self tool duplicateCurrentSlide.
	self tool nextSlide.
	self step.
	self assert: self currentSlideNumberMorphNumber equals: previousSlideNumber + 1
	