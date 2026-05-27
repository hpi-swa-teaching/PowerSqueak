section persistence tests
testLastSlideSurvivesSaveLoad

	| saver loader savedData section |
	3 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1).
	section := self presentation sectionNamed: 'A'.
	section lastSlide: (self presentation slideAt: 2).
	saver := PSPresentationSaver new
		presentation: self presentation;
		yourself.
	savedData := saver sectionData.
	self presentation removeSectionNamed: 'A'.
	loader := PSPresentationLoader new
		presentation: self presentation;
		yourself.
	loader addSectionsFromData: savedData.
	self
		assert: (self presentation sectionNamed: 'A') lastSlide
		equals: (self presentation slideAt: 2)
