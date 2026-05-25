section move tests
testMoveSectionAnchorUpStopsAtSectionAbove

	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Above' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'Below' firstSlide: (self presentation slideAt: 3).
	self deny: (self presentation
		canMoveSectionAnchorUp: (self presentation sectionNamed: 'Below'))
