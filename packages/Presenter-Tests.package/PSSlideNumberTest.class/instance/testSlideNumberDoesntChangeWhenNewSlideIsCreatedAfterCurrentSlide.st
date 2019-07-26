slide number tests
testSlideNumberDoesntChangeWhenNewSlideIsCreatedAfterCurrentSlide

	| previousSlideNumber |
	previousSlideNumber := self slideNumberMorphNumber.
	self createSlideAfterIndex: self slide slideNumber.
	self assert: self slideNumberMorphNumber equals: previousSlideNumber
	