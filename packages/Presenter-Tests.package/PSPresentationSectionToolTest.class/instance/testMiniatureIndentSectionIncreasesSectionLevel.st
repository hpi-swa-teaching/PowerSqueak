section level tests
testMiniatureIndentSectionIncreasesSectionLevel

	| child |
	self createSlide.
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2).
	child := self presentation sectionNamed: 'Child'.
	(self tool miniatureOf: (self presentation slideAt: 2)) indentSection.
	self assert: child level equals: 2
