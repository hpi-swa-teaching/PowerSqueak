section persistence tests
testSectionsSurviveSaveLoad

	| saver loader savedData |
	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Body' firstSlide: (self presentation slideAt: 3).
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
		assert: (self presentation hasSectionNamed: 'Intro');
		assert: (self presentation hasSectionNamed: 'Body');
		assert: (self presentation indexOf: (self presentation sectionNamed: 'Intro') firstSlide)
			equals: 1;
		assert: (self presentation indexOf: (self presentation sectionNamed: 'Body') firstSlide)
			equals: 3