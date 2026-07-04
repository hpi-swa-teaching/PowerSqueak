section creation tests
testCreatedSectionHasGivenName

	self presentation addSectionNamed: 'Methods' firstSlide: (self presentation slideAt: 1).
	self assert: (self presentation sectionNamed: 'Methods') name equals: 'Methods'