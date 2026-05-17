context menu
defaultActions

	^ {self hideButtonData.
		self deleteSlideData.
		self duplicateSlideData.
		self moveSlideData.
		self saveAsLayoutData.
		self deleteLayoutData.
		self renameLayoutData}
