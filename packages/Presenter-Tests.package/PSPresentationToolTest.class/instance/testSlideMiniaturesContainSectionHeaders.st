slide section tests
testSlideMiniaturesContainSectionHeaders

	| headers |
	self createSlide.
	self tool
		createSectionNamed: 'Einleitung' startingAt: 1;
		createSectionNamed: 'Methoden' startingAt: 2.
	headers := self slideMiniatures select: [:each | each isPSSlideSectionHeader].
	self
		assert: headers size equals: 2;
		assert: (headers collect: [:each | each sectionName]) asArray equals: {'Einleitung'. 'Methoden'}
