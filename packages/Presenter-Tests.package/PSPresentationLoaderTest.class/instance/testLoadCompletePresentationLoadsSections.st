presentation loading tests
testLoadCompletePresentationLoadsSections

	| presentation |
	[presentation := self loader loadPresentationFromDirectory: self mockCompletePresentationDirectory]
		valueSupplyingAnswer: true.
	self
		assert: (presentation sectionNameStartingAt: 1) equals: 'Einleitung';
		assert: (presentation sectionNameStartingAt: 3) equals: 'Methoden'
