presentation mode
enablePresentationMode

	self presentationMode ifTrue: [^ self].
	
	self slides do: [:each | each enablePresentationMode].
	self slideContainer enablePresentationMode.
	self presentationMode: true