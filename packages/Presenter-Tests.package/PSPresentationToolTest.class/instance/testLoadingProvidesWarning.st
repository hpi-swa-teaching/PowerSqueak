loading and saving tests
testLoadingProvidesWarning

	self 
		should: [self tool loadPresentation] 
		raise: ProvideAnswerNotification 
		description: self tool class riskyOperationMessage.