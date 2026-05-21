section level tests
testOutdentSectionDecreasesLevel

	| child |
	self createSlide.
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2).
	child := self presentation sectionNamed: 'Child'.
	self presentation indentSection: child.
	self presentation outdentSection: child.
	self assert: child level equals: 1
