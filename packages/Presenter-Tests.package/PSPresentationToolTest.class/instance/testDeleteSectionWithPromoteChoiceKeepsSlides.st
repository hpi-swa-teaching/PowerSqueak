section delete dialog tests
testDeleteSectionWithPromoteChoiceKeepsSlides

	| section beforeCount |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'X' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'X'.
	beforeCount := self presentation slideCount.
	self tool deleteSection: section choice: #promote.
	self
		deny: (self presentation hasSectionNamed: 'X');
		assert: self presentation slideCount equals: beforeCount
