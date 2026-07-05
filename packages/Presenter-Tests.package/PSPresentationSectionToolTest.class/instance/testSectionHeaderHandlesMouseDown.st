section event tests
testSectionHeaderHandlesMouseDown

	| section |
	self presentation addSectionNamed: 'S' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'S'.
	self assert: ((self tool miniatureController sectionHeaderFor: section) handlesMouseDown: nil)
