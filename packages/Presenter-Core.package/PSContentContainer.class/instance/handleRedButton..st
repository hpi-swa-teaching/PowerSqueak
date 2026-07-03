event handling
handleRedButton: anEvent

	self isInteractive ifTrue: [^ self].
	self updateSelection.
	anEvent ignore