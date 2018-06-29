loading tests
testLoadingProvidesWarning

	self 
		should: [self tool loadPresentation] 
		raise: ProvideAnswerNotification 
		withDescriptionContainingCaseInsensitive: 'warning'