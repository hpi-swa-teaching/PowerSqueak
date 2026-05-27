drop slot tests
testValidIndentsAfterChildSectionAnchor

	3 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2).
	self presentation indentSection: (self presentation sectionNamed: 'Child').
	self
		assert: (self presentation validIndentsAt: 4) asArray equals: #(1 2)
