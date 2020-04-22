presentation mode
disablePresentationMode 

	self presentationMode ifFalse: [^ self].
	
	self disableNonInteractiveMode.
	self slideContainer disablePresentationMode.
	self presentationMode: false.
	self enterPreviousFullScreenMode