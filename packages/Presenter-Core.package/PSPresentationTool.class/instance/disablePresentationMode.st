presentation mode
disablePresentationMode 

	self presentationMode ifFalse: [^ self].
	
	self disableNonInteractiveMode.
	self slideContainer disablePresentationMode.
	self presentation slidesDo: [:each | each disablePresentationMode].
	self presentationMode: false