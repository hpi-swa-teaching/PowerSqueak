section drop tests
testValidIndentsAtTopOfPresentation

	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 2).
	self
		assert: (self presentation validIndentsAt: 1) asArray equals: #(0);
		assert: (self presentation validIndentsAt: 2) asArray equals: #(0)
