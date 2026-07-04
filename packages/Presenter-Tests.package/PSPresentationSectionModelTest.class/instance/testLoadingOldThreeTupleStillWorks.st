section persistence tests
testLoadingOldThreeTupleStillWorks

	| loader oldData |
	2 timesRepeat: [self createSlide].
	oldData := {{'Intro'. 1. 1}. {'Body'. 3. 2}}.
	loader := PSPresentationLoader new
		presentation: self presentation;
		yourself.
	loader addSectionsFromData: oldData.
	self
		assert: (self presentation hasSectionNamed: 'Intro');
		assert: (self presentation hasSectionNamed: 'Body');
		deny: (self presentation sectionNamed: 'Intro') collapsed;
		deny: (self presentation sectionNamed: 'Body') collapsed
