style tests
testFontSizeDialog

	self 
		should: [self textField showFontSizeDialog] 
		raise: ProvideAnswerNotification 
		description: self textField fontSizeDialogText.