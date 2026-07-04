section move tests
testMiniatureMoveSectionDownShiftsAnchor

	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'Mid' firstSlide: (self presentation slideAt: 2).
	(self tool miniatureOf: (self presentation slideAt: 2)) moveSectionDown.
	self
		assert: (self presentation sectionNamed: 'Mid') firstSlide
		equals: (self presentation slideAt: 3)
