section membership tests
testMovedSlideJoinsSectionAtNewPosition

	| movedSlide |
	2 timesRepeat: [self createSlide].
	movedSlide := self presentation slideAt: 1.
	self presentation addSectionNamed: 'Body' firstSlide: (self presentation slideAt: 2).
	self deny: (self presentation sectionOfSlide: movedSlide) notNil.
	self presentation moveSlideAt: 1 to: 3.
	self assert: (self presentation sectionOfSlide: movedSlide) name equals: 'Body'