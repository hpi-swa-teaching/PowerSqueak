section delete dialog tests
testDeleteAnchorWithCascadeChoiceRemovesSectionAndSlides

	3 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'X' firstSlide: (self presentation slideAt: 2).
	self tool deleteAnchorSlideAt: 2 choice: #cascade.
	self deny: (self presentation hasSectionNamed: 'X')
