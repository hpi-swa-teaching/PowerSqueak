presentation mode
enablePresentationMode

	self presentationMode ifTrue: [^ self].
	self slideContainer enablePresentationMode.
	self presentationMode: true