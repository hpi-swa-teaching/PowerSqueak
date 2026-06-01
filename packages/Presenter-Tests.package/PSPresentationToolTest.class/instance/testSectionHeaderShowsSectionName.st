section view tests
testSectionHeaderShowsSectionName

	| header |
	self presentation addSectionNamed: 'Einleitung' firstSlide: (self presentation slideAt: 1).
	header := self tool slideMiniatures detect: [:each | each isPSSectionHeader].
	self assert: (header labelText includesSubstring: 'Einleitung')