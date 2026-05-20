section membership tests
testDerivedMembershipUpdatesAfterMove

	| earlierSlide |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	earlierSlide := self presentation slideAt: 3.
	self assert: (self presentation sectionOfSlide: earlierSlide) name equals: 'Intro'.
	self presentation moveSlideAt: 1 to: 3.
	self assert: (self presentation sectionOfSlide: earlierSlide) isNil