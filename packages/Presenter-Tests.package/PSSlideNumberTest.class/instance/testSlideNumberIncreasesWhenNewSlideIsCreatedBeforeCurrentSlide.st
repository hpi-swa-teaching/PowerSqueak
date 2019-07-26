slide number tests
testSlideNumberIncreasesWhenNewSlideIsCreatedBeforeCurrentSlide

	| previousSlideNumber |
	previousSlideNumber := self slideNumberMorphNumber.
	self createSlideAfterIndex: 0.
	self assert: self slideNumberMorphNumber equals: previousSlideNumber + 1
	