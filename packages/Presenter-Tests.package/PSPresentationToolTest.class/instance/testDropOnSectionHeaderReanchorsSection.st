drag and drop tests
testDropOnSectionHeaderReanchorsSection

	| slideA slideB section header miniatureCopy |
	self createSlide.
	slideA := self presentation slideAt: 1.
	slideB := self presentation slideAt: 2.
	self presentation addSectionNamed: 'X' firstSlide: slideA.
	section := self presentation sectionNamed: 'X'.
	header := PSSectionHeader forSection: section tool: self tool.
	self tool beginDraggingSlide: slideB.
	miniatureCopy := (self tool miniatureOf: slideB) copy.
	header
		acceptDroppingMorph: miniatureCopy
		event: (self mouse: 4 downAt: 0 @ 0).
	self assert: section firstSlide == slideB
