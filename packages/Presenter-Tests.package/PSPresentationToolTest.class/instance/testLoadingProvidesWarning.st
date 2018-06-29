loading tests
testLoadingProvidesWarning

	self 
		should: [self tool loadPresentation] 
		raise: ProvideAnswerNotification 
		description: self tool riskyOperationMessage.