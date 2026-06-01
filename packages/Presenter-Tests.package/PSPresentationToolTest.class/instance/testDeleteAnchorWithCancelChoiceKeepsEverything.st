section delete dialog tests
testDeleteAnchorWithCancelChoiceKeepsEverything

	| slideA section beforeCount |
	self createSlide.
	slideA := self presentation slideAt: 1.
	self presentation addSectionNamed: 'X' firstSlide: slideA.
	section := self presentation sectionNamed: 'X'.
	beforeCount := self presentation slideCount.
	self tool deleteAnchorSlideAt: 1 choice: #cancel.
	self
		assert: self presentation slideCount equals: beforeCount;
		assert: section firstSlide == slideA;
		assert: (self presentation hasSectionNamed: 'X')
