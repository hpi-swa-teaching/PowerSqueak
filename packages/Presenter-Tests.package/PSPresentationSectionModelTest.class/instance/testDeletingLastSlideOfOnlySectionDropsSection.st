section membership tests
testDeletingLastSlideOfOnlySectionDropsSection

	self createSlide.
	self presentation addSectionNamed: 'Tail' firstSlide: (self presentation slideAt: 2).
	self presentation deleteSlideAt: 2.
	self deny: (self presentation hasSectionNamed: 'Tail')
