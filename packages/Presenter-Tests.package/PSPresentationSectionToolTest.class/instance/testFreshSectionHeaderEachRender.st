section collapse tests
testFreshSectionHeaderEachRender

	| section first second |
	self createSlide.
	self presentation addSectionNamed: 'X' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'X'.
	first := self tool miniatureController sectionHeaderFor: section.
	second := self tool miniatureController sectionHeaderFor: section.
	self deny: first == second
