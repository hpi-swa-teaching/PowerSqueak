slide creation tests
testDuplicatedSlidesContent

	| slide duplicatedSlide |
	slide := self tool currentSlide.
	slide addContent: (Morph new center: slide center).
	self tool duplicateCurrentSlide.
	duplicatedSlide := self tool slideAt: self tool currentSlideNumber +1.
	slide submorphs withIndexDo: [:each :index | self assert: each center = (duplicatedSlide submorphs at: index) center]