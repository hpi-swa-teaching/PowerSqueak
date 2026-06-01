section collapse tests
testToggleCollapsedFlipsState

	| section |
	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'Intro'.
	self deny: section isCollapsed.
	section toggleCollapsed.
	self assert: section isCollapsed.
	section toggleCollapsed.
	self deny: section isCollapsed
