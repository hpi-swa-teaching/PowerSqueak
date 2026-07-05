section indent tests
testTabIndentOnAnchorSlideIndentsItsSection

	| anchor child |
	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'B' firstSlide: (self presentation slideAt: 2).
	anchor := self presentation slideAt: 2.
	child := self presentation sectionNamed: 'B'.
	self assert: child level equals: 1.
	(self tool miniatureController miniatureOf: anchor) tabIndent.
	self assert: child level equals: 2
