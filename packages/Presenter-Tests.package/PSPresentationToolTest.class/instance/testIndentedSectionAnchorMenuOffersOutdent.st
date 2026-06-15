section menu tests
testIndentedSectionAnchorMenuOffersOutdent

	| actions |
	self createSlide.
	self presentation
		addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'B' firstSlide: (self presentation slideAt: 2).
	self presentation indentSection: (self presentation sectionNamed: 'B').
	actions := (self tool miniatureOf: (self presentation slideAt: 2)) defaultActions
		collect: [:each | each at: #action ifAbsent: [nil]].
	self assert: (actions includes: #outdentSection)
