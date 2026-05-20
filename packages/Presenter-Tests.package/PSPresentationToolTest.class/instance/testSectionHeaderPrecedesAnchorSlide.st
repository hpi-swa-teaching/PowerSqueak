section view tests
testSectionHeaderPrecedesAnchorSlide

	| miniatures headerIndex |
	self createSlide.
	self presentation addSectionNamed: 'Body' firstSlide: (self presentation slideAt: 2).
	miniatures := self tool slideMiniatures.
	headerIndex := miniatures findFirst: [:each | each isPSSectionHeader].
	self assert: (miniatures at: headerIndex + 1)
		equals: (self tool miniatureOf: (self presentation slideAt: 2))