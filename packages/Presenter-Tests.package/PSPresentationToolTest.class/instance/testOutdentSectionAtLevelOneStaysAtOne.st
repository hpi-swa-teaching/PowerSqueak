section level tests
testOutdentSectionAtLevelOneStaysAtOne

	| section |
	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'Intro'.
	self presentation outdentSection: section.
	self assert: section level equals: 1
