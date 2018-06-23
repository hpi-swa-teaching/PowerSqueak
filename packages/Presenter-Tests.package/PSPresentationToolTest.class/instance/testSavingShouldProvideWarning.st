saving tests
testSavingShouldProvideWarning

	self
		should: [self tool savePresentation] 
		raise: ProvideAnswerNotification 
		withDescriptionContainingCaseInsensitive: 'warning'.