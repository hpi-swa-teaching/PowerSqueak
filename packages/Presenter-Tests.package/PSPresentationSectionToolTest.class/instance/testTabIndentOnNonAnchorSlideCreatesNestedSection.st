section indent tests
testTabIndentOnNonAnchorSlideCreatesNestedSection

	| nonAnchor child |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1).
	nonAnchor := self presentation slideAt: 2.
	[(self tool miniatureOf: nonAnchor) tabIndent]
		valueSupplyingAnswer: 'B'.
	child := self presentation sectionNamed: 'B'.
	self
		assert: child notNil;
		assert: child firstSlide == nonAnchor;
		assert: child level equals: 2
