section drop tests
testSectionHeaderWantsDroppedMiniatureOnly

	| section header |
	self presentation addSectionNamed: 'S' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'S'.
	header := self tool sectionHeaderFor: section.
	self assert: (header
		wantsDroppedMorph: (self tool miniatureOf: (self presentation slideAt: 1))
		event: nil).
	self deny: (header wantsDroppedMorph: Morph new event: nil)
