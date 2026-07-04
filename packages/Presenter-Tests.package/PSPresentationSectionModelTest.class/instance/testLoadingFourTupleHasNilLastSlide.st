section persistence tests
testLoadingFourTupleHasNilLastSlide

	| loader oldData |
	2 timesRepeat: [self createSlide].
	oldData := {{'A'. 1. 1. false}}.
	loader := PSPresentationLoader new
		presentation: self presentation;
		yourself.
	loader addSectionsFromData: oldData.
	self assert: (self presentation sectionNamed: 'A') lastSlide isNil
