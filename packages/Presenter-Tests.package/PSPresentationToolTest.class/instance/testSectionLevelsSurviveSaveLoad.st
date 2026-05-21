section persistence tests
testSectionLevelsSurviveSaveLoad

	| saver loader savedData |
	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Body' firstSlide: (self presentation slideAt: 3).
	self presentation indentSection: (self presentation sectionNamed: 'Body').
	saver := PSPresentationSaver new
		presentation: self presentation;
		yourself.
	savedData := saver sectionData.
	self presentation
		removeSectionNamed: 'Intro';
		removeSectionNamed: 'Body'.
	loader := PSPresentationLoader new
		presentation: self presentation;
		yourself.
	loader addSectionsFromData: savedData.
	self
		assert: (self presentation sectionNamed: 'Intro') level equals: 1;
		assert: (self presentation sectionNamed: 'Body') level equals: 2
