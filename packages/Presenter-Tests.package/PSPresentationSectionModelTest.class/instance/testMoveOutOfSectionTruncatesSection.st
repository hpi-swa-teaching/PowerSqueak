section truncation tests
testMoveOutOfSectionTruncatesSection

	| section slideTwo |
	3 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'A'.
	slideTwo := self presentation slideAt: 2.
	self presentation truncateSectionAt: (self presentation slideAt: 3).
	self
		assert: section lastSlide == slideTwo;
		deny: ((self presentation sectionsCoveringSlideAt: 3) includes: section);
		assert: ((self presentation sectionsCoveringSlideAt: 2) includes: section)
