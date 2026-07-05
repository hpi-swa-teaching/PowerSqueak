section navigation tests
testPreviousSectionBeforeFirstSectionDoesNotWrap

	4 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'Middle' firstSlide: (self presentation slideAt: 2).
	self tool selectSlideAt: 1.
	self tool sectionController previousSection.
	self assert: self tool currentSlideNumber equals: 1