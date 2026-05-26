event handling
mouseUp: anEvent

	anEvent yellowButtonPressed ifTrue: [^ self].
	self toggleCollapse
