presentation mode
enablePresentationMode

	self presentationMode ifTrue: [^ self].
	
	self presentation slidesDo: [:each | each enablePresentationMode].
	self slideContainer enablePresentationMode.
	self presentationMode: true.
	self enterFullScreen