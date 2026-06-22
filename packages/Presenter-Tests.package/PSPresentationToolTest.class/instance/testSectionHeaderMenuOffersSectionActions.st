section menu tests
testSectionHeaderMenuOffersSectionActions

	| section actions |
	3 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'B' firstSlide: (self presentation slideAt: 3).
	section := self presentation sectionNamed: 'B'.
	actions := (self tool sectionHeaderFor: section) defaultActions
		collect: [:each | each at: #action ifAbsent: [nil]].
	self
		assert: (actions includes: #toggleCollapse);
		assert: (actions includes: #renameSection);
		assert: (actions includes: #deleteSection);
		assert: (actions includes: #collapseAll);
		assert: (actions includes: #expandAll);
		assert: (actions includes: #indentSection);
		assert: (actions includes: #moveSectionUp);
		assert: (actions includes: #moveSectionDown)
