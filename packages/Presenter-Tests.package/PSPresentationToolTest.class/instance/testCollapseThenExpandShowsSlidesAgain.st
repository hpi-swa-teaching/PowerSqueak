section collapse tests
testCollapseThenExpandShowsSlidesAgain

	| section |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'Intro'.
	(PSSectionHeader forSection: section tool: self tool) toggleCollapse.
	self world doOneCycle.
	self assert: section isCollapsed.
	(PSSectionHeader forSection: section tool: self tool) toggleCollapse.
	self world doOneCycle.
	self deny: section isCollapsed
