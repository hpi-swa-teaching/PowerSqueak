collection behaviour
addSectionNamed: aString firstSlide: aPSSlide

	(self hasSectionNamed: aString)
		ifTrue: [self error: 'Section name already exists'].
	(self sectionStartingAt: aPSSlide)
		ifNotNil: [self error: 'Slide already starts a section'].
	self sections add: (PSSlideSection named: aString firstSlide: aPSSlide)