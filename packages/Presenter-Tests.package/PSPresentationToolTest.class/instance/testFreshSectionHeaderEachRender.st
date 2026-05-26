section collapse tests
testFreshSectionHeaderEachRender

	| section first second |
	self createSlide.
	self presentation addSectionNamed: 'X' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'X'.
	first := self tool sectionHeaderFor: section.
	second := self tool sectionHeaderFor: section.
	self deny: first == second
