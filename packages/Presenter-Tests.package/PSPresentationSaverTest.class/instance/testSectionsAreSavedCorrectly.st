saving tests
testSectionsAreSavedCorrectly

	| aDictionary |
	self presentation createSectionNamed: 'Einleitung' startingAt: 1.
	self saver presentation: self presentation.
	aDictionary := self saver createPresentationMetadataDictionary.
	self assert: (aDictionary at: #sections) equals: self presentation sections
