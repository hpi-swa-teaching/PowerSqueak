section move tests
testMoveSectionAnchorDownShiftsAnchor

	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Mid' firstSlide: (self presentation slideAt: 2).
	self presentation
		moveSectionAnchorStartingAt: (self presentation slideAt: 2)
		direction: 1.
	self
		assert: (self presentation sectionNamed: 'Mid') firstSlide
		equals: (self presentation slideAt: 3)
