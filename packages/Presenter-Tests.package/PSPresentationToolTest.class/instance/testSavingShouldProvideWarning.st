saving tests
testSavingShouldProvideWarning

	self
		should: [self tool savingConfirmation] 
		raise: ProvideAnswerNotification 
		withDescriptionContainingCaseInsensitive: 'warning'.