section hierarchy tests
testCoveringSectionsReturnNestingChain

	| covering |
	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Level1' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Level2' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'Level3' firstSlide: (self presentation slideAt: 3).
	self presentation
		indentSection: (self presentation sectionNamed: 'Level2');
		indentSection: (self presentation sectionNamed: 'Level3');
		indentSection: (self presentation sectionNamed: 'Level3').
	covering := self presentation sectionsCoveringSlideAt: 3.
	self assert: covering size equals: 3.
	self assert: covering last equals: (self presentation sectionNamed: 'Level3')
