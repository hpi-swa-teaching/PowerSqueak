section truncation tests
testDeletingLastSlideClearsLastSlideRef

	| section slideTwo |
	3 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'A'.
	slideTwo := self presentation slideAt: 2.
	section lastSlide: slideTwo.
	self presentation deleteSlideAt: 2.
	self assert: section lastSlide isNil
