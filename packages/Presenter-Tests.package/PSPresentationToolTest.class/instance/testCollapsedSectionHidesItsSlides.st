section collapse tests
testCollapsedSectionHidesItsSlides

	| parent |
	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2).
	self presentation indentSection: (self presentation sectionNamed: 'Child').
	parent := self presentation sectionNamed: 'Parent'.
	parent collapsed: true.
	self
		assert: (self presentation isSlideHiddenByCollapseAt: 1);
		assert: (self presentation isSlideHiddenByCollapseAt: 2);
		assert: (self presentation isSlideHiddenByCollapseAt: 3)
