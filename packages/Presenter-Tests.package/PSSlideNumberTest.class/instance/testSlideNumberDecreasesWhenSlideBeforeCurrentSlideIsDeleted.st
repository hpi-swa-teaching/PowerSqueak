slide number tests
testSlideNumberDecreasesWhenSlideBeforeCurrentSlideIsDeleted

	| previousSlideNumber |
	self createSlideAfterIndex: 0.
	previousSlideNumber := self slideNumberMorphNumber.
	self tool deleteSlideAt: 1.
	self step.
	self assert: self slideNumberMorphNumber equals: previousSlideNumber - 1
	