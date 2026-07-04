section hierarchy tests
testSlideCountOfSectionCountsDirectSlides

	| parent child |
	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2).
	self presentation indentSection: (self presentation sectionNamed: 'Child').
	parent := self presentation sectionNamed: 'Parent'.
	child := self presentation sectionNamed: 'Child'.
	self
		assert: (self presentation slideCountOfSection: parent) equals: 1;
		assert: (self presentation slideCountOfSection: child) equals: 2
