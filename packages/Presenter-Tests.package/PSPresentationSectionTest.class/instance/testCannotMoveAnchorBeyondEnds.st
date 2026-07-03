section move tests
testCannotMoveAnchorBeyondEnds

	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'First' firstSlide: (self presentation slideAt: 1).
	self deny: (self presentation
		canMoveSectionAnchorUp: (self presentation sectionNamed: 'First')).
	self presentation removeSectionNamed: 'First'.
	self presentation
		addSectionNamed: 'Last' firstSlide: (self presentation slideAt: 3).
	self deny: (self presentation
		canMoveSectionAnchorDown: (self presentation sectionNamed: 'Last'))
