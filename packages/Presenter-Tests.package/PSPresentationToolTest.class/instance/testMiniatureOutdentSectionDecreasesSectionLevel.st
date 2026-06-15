section level tests
testMiniatureOutdentSectionDecreasesSectionLevel

	| child |
	self createSlide.
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2).
	child := self presentation sectionNamed: 'Child'.
	self presentation indentSection: child.
	self assert: child level equals: 2.
	(self tool miniatureOf: (self presentation slideAt: 2)) outdentSection.
	self assert: child level equals: 1
