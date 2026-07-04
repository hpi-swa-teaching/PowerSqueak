section view tests
testSectionHeaderAppearsInMiniatures

	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	self tool updateSlideMiniatures.
	self assert: (self tool slideMiniatures anySatisfy: [:each | each isPSSectionHeader])