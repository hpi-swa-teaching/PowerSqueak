section collapse tests
testCollapseAllCollapsesEverythingAndExpandAllReverses

	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'B' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'C' firstSlide: (self presentation slideAt: 3).
	self presentation collapseAllSections.
	self presentation sections do: [:each |
		self assert: each collapsed].
	self presentation expandAllSections.
	self presentation sections do: [:each |
		self deny: each collapsed]
