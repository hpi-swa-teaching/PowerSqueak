loading and saving tests
testSavingShouldProvideWarning

	self
		should: [self tool savePresentation] 
		raise: ProvideAnswerNotification 
		description: self tool riskyOperationMessage.