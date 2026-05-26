section hierarchy tests
testRecursiveSlideCountIncludesChildren

	4 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 3).
	self presentation indentSection: (self presentation sectionNamed: 'Child').
	self
		assert: (self presentation
			recursiveSlideCountOfSection: (self presentation sectionNamed: 'Parent'))
			equals: 5;
		assert: (self presentation
			slideCountOfSection: (self presentation sectionNamed: 'Parent'))
			equals: 2;
		assert: (self presentation
			recursiveSlideCountOfSection: (self presentation sectionNamed: 'Child'))
			equals: 3
