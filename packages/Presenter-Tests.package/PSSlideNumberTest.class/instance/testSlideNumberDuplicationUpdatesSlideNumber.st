as yet unclassified
testSlideNumberDuplicationUpdatesSlideNumber

	| previousSlideNumber |
	previousSlideNumber := self currentSlideNumberMorph text string asInteger.
	self tool duplicateCurrentSlide.
	self tool nextSlide.
	self currentSlideNumberMorph step.
	self assert: self currentSlideNumberMorph text string asInteger equals: previousSlideNumber +1
	