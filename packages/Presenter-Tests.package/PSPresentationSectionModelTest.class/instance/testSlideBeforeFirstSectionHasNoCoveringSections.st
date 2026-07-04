section hierarchy tests
testSlideBeforeFirstSectionHasNoCoveringSections

	self createSlide.
	self presentation addSectionNamed: 'Body' firstSlide: (self presentation slideAt: 2).
	self assert: (self presentation sectionsCoveringSlideAt: 1) isEmpty
