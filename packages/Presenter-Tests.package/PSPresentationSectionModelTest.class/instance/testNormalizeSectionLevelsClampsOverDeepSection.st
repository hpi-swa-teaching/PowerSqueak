section level tests
testNormalizeSectionLevelsClampsOverDeepSection

	| first second |
	self createSlide.
	self presentation
		addSectionNamed: 'First' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Second' firstSlide: (self presentation slideAt: 2).
	first := self presentation sectionNamed: 'First'.
	second := self presentation sectionNamed: 'Second'.
	second level: 5.
	self presentation normalizeSectionLevels.
	self assert: second level equals: first level + 1
