section menu tests
testNonAnchorSlideInSectionMenuOffersSubSectionAndMoveOut

	| actions |
	self createSlide.
	self presentation addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1).
	actions := (self tool miniatureController miniatureOf: (self presentation slideAt: 2)) defaultActions
		collect: [:each | each at: #action ifAbsent: [nil]].
	self
		assert: (actions includes: #addSubSection);
		assert: (actions includes: #moveOutOfSection)
