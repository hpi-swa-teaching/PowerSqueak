section indent tests
testEverySlideInSectionGetsSectionIndent

	| rows expected step |
	3 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'B' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'C' firstSlide: (self presentation slideAt: 3).
	self presentation indentSection: (self presentation sectionNamed: 'B').
	self presentation indentSection: (self presentation sectionNamed: 'C').
	self presentation indentSection: (self presentation sectionNamed: 'C').
	step := PSSectionHeader indentStep.
	expected := {1 * step. 2 * step. 3 * step. 3 * step}.
	rows := self tool miniatureController slideMiniatures select: [:each | each isKindOf: PSMiniatureRow].
	self assert: rows size equals: 4.
	rows withIndexDo: [:row :i |
		self
			assert: row firstSubmorph extent x
			equals: (expected at: i)]
