section persistence tests
testCollapsedStateSurvivesSaveLoad

	| saver loader savedData |
	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	(self presentation sectionNamed: 'Intro') collapsed: true.
	saver := PSPresentationSaver new
		presentation: self presentation;
		yourself.
	savedData := saver sectionData.
	self presentation removeSectionNamed: 'Intro'.
	loader := PSPresentationLoader new
		presentation: self presentation;
		yourself.
	loader addSectionsFromData: savedData.
	self assert: (self presentation sectionNamed: 'Intro') collapsed
