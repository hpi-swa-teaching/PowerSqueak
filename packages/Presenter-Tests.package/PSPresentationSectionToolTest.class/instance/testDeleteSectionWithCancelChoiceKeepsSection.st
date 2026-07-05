section delete dialog tests
testDeleteSectionWithCancelChoiceKeepsSection

	| section beforeCount |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'X' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'X'.
	beforeCount := self presentation slideCount.
	self tool sectionController deleteSection: section choice: #cancel.
	self
		assert: (self presentation hasSectionNamed: 'X');
		assert: self presentation slideCount equals: beforeCount