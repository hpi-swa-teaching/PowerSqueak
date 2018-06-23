as yet unclassified
testLoadingProvidesWarning

	self 
		should: [self tool loadPresentation] 
		raise: ProvideAnswerNotification 
		withDescriptionContainingCaseInsensitive: 'warning'