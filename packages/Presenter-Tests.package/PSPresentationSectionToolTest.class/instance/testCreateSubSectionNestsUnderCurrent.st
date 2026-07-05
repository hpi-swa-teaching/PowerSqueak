section indent tests
testCreateSubSectionNestsUnderCurrent

	| parent child |
	3 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1).
	self tool sectionController
		createSubSectionNamed: 'B'
		startingAt: (self presentation slideAt: 2).
	parent := self presentation sectionNamed: 'A'.
	child := self presentation sectionNamed: 'B'.
	self assert: child level equals: parent level + 1