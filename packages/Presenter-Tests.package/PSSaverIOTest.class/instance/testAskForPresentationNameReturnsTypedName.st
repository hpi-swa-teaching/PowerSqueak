dialog tests
testAskForPresentationNameReturnsTypedName
	| result |
	result := [PSPresentationSaver new askForPresentationName] valueSupplyingAnswer: 'CovDeck'.
	self assert: result equals: 'CovDeck'
