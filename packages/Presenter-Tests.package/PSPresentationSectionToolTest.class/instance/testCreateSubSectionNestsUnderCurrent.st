section indent tests
testCreateSubSectionNestsUnderCurrent

	| parent child |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1).
	parent := self presentation sectionNamed: 'A'.
	self tool
		createSubSectionNamed: 'B'
		startingAt: (self presentation slideAt: 2).
	child := self presentation sectionNamed: 'B'.
	self
		assert: child level equals: parent level + 1;
		assert: child firstSlide == (self presentation slideAt: 2)
