section menu tests
testSectionAnchorMenuOffersRenameDeleteIndentAndMove

	| actions |
	3 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'B' firstSlide: (self presentation slideAt: 3).
	actions := (self tool miniatureController miniatureOf: (self presentation slideAt: 3)) defaultActions
		collect: [:each | each at: #action ifAbsent: [nil]].
	self
		assert: (actions includes: #renameSection);
		assert: (actions includes: #deleteSection);
		assert: (actions includes: #indentSection);
		assert: (actions includes: #moveSectionUp);
		assert: (actions includes: #moveSectionDown)
