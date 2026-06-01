drop slot tests
testValidIndentsBetweenSiblingSections

	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'B' firstSlide: (self presentation slideAt: 3).
	self
		assert: (self presentation validIndentsAt: 3) asArray equals: #(1)
