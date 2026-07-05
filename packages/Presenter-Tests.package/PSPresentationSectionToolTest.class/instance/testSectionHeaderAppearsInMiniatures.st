section view tests
testSectionHeaderAppearsInMiniatures

	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	self tool miniatureController updateSlideMiniatures.
	self assert: (self tool miniatureController slideMiniatures anySatisfy: [:each | each isPSSectionHeader])