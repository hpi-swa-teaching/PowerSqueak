section move tests
testSetFirstSlideOfSectionReanchorsSection

	| newAnchor |
	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Mid' firstSlide: (self presentation slideAt: 2).
	newAnchor := self presentation slideAt: 3.
	self presentation
		setFirstSlideOfSection: (self presentation sectionNamed: 'Mid')
		to: newAnchor.
	self
		assert: (self presentation sectionNamed: 'Mid') firstSlide
		equals: newAnchor
