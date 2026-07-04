section move tests
testMiniatureMoveOutOfSectionRemovesSlideFromSection

	| section |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'S' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'S'.
	(self tool miniatureOf: (self presentation slideAt: 3)) moveOutOfSection.
	self
		deny: ((self presentation sectionsCoveringSlideAt: 3) includes: section);
		assert: ((self presentation sectionsCoveringSlideAt: 2) includes: section)
