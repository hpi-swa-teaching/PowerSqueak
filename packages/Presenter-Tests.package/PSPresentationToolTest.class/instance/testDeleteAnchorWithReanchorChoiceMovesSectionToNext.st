section delete dialog tests
testDeleteAnchorWithReanchorChoiceMovesSectionToNext

	| slideA slideB section |
	self createSlide.
	slideA := self presentation slideAt: 1.
	slideB := self presentation slideAt: 2.
	self presentation addSectionNamed: 'X' firstSlide: slideA.
	section := self presentation sectionNamed: 'X'.
	self tool deleteAnchorSlideAt: 1 choice: #reanchor.
	self
		assert: (self presentation hasSectionNamed: 'X');
		assert: section firstSlide == slideB
