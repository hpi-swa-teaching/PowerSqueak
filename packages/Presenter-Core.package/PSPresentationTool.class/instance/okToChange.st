window closing
okToChange

	self warnBeforeClosing ifFalse: [^ true].
	^ self confirmCloseWithUnsavedChanges