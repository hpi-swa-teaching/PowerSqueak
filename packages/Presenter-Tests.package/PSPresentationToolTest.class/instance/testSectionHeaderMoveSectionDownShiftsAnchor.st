section move tests
testSectionHeaderMoveSectionDownShiftsAnchor

	| section |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'Mid' firstSlide: (self presentation slideAt: 2).
	section := self presentation sectionNamed: 'Mid'.
	(self tool sectionHeaderFor: section) moveSectionDown.
	self
		assert: (self presentation sectionNamed: 'Mid') firstSlide
		equals: (self presentation slideAt: 3)
