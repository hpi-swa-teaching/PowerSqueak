drag and drop tests
testDropOnSectionHeaderReanchorsSection

	| slideA slideB section header |
	self createSlide.
	slideA := self presentation slideAt: 1.
	slideB := self presentation slideAt: 2.
	self presentation addSectionNamed: 'X' firstSlide: slideA.
	section := self presentation sectionNamed: 'X'.
	header := PSSectionHeader forSection: section tool: self tool.
	header
		acceptDroppingMorph: (self tool miniatureController miniatureOf: slideB)
		event: (self mouse: 4 downAt: 0 @ 0).
	self assert: section firstSlide == slideB
