style tests
testFontSizeDialog

	self 
		should: [self textField showTextSizeDialog] 
		raise: ProvideAnswerNotification 
		description: PSTextMorph fontSizeDialogText