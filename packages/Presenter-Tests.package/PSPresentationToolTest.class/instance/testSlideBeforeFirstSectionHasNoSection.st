section membership tests
testSlideBeforeFirstSectionHasNoSection

	self createSlide.
	self presentation addSectionNamed: 'Body' firstSlide: (self presentation slideAt: 2).
	self assert: (self presentation sectionOfSlideAt: 1) isNil