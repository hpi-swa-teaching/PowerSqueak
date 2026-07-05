file tests
testSavingShouldProvideWarning

	self
		should: [self tool savePresentation] 
		raise: ProvideAnswerNotification 
		description: self tool class riskyOperationMessage.