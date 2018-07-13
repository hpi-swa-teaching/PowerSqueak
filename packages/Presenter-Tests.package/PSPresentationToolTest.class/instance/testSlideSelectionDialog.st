slide navigation tests
testSlideSelectionDialog

	self 
		should: [self tool openSlideSelectionDialog] 
		raise: ProvideAnswerNotification 
		description: self tool slideSelectionDialogText