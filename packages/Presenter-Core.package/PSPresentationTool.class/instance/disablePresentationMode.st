presentation mode
disablePresentationMode 

	self presentationMode ifFalse: [^ self].
	
	self slideContainer disablePresentationMode.
	self slides do: [:each | each disablePresentationMode].
	self presentationMode: false