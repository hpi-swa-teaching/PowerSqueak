section deletion tests
testPromoteChildrenKeepsSlidesAndDecrementsChildLevels

	| originalCount |
	2 timesRepeat: [self createSlide].
	originalCount := self presentation slideCount.
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2).
	self presentation indentSection: (self presentation sectionNamed: 'Child').
	self presentation
		promoteChildrenOfSection: (self presentation sectionNamed: 'Parent').
	self
		deny: (self presentation hasSectionNamed: 'Parent');
		assert: (self presentation hasSectionNamed: 'Child');
		assert: (self presentation sectionNamed: 'Child') level equals: 1;
		assert: self presentation slideCount equals: originalCount
